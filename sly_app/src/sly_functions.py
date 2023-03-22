import functools
import os
import math
import numpy as np
import sly_app.src.mask_image as mask_image
import sly_app.src.sly_globals as g
import supervisely as sly
from isegm.inference.clicker import Click
from supervisely.io.fs import silent_remove


def download_volume_slice_as_np(
    volume_id: int,
    slice_index: int,
    normal: dict,
    window_center: float,
    window_width: int,
) -> np.ndarray:
    data = {
        "volumeId": volume_id,
        "sliceIndex": slice_index,
        "normal": {"x": normal["x"], "y": normal["y"], "z": normal["z"]},
        "windowCenter": window_center,
        "windowWidth": window_width,
    }

    image_bytes = g.api.post(
        method="volumes.slices.images.download", data=data, stream=True
    ).content

    return sly.image.read_bytes(image_bytes)


def download_image_from_context(context):
    if "image_id" in context:
        return g.api.image.download_np(context["image_id"])
    elif "image_hash" in context:
        img_path = os.path.join(g.img_dir, "base_image.png")
        return get_image_by_hash(context["image_hash"], img_path)
    elif "volume" in context:
        volume_id = context["volume"]["volume_id"]
        slice_index = context["volume"]["slice_index"]
        normal = context["volume"]["normal"]
        window_center = context["volume"]["window_center"]
        window_width = context["volume"]["window_width"]
        return download_volume_slice_as_np(
            volume_id=volume_id,
            slice_index=slice_index,
            normal=normal,
            window_center=window_center,
            window_width=window_width,
        )
    elif "video" in context:
        return g.api.video.frame.download_np(
            context["video"]["video_id"], context["video"]["frame_index"]
        )
    else:
        raise Exception("Project type is not supported")


def get_smart_bbox(crop):
    x1, y1 = crop[0]["x"], crop[0]["y"]
    x2, y2 = crop[1]["x"], crop[1]["y"]
    return x1, y1, x2, y2


def get_pos_neg_points_list_from_context_bbox_relative(
    x1, y1, pos_points, neg_points, cropped_shape, resized_shape
):
    width_scale = 1
    height_scale = 1
    if resized_shape is not None:
        width_scale = resized_shape[0] / cropped_shape[0]
        height_scale = resized_shape[1] / cropped_shape[1]

    bbox_pos_points = []
    for coords in pos_points:
        x = (coords[0] - x1) * width_scale
        y = (coords[1] - y1) * height_scale
        pos_point = [x, y]
        bbox_pos_points.append(pos_point)

    bbox_neg_points = []
    for coords in neg_points:
        x = (coords[0] - x1) * width_scale
        y = (coords[1] - y1) * height_scale
        neg_point = [x, y]
        bbox_neg_points.append(neg_point)

    return bbox_pos_points, bbox_neg_points


def get_click_list_from_points(pos_points, neg_points):
    clicks_list = []
    for coords in pos_points:
        click = Click(True, (coords[1], coords[0]))
        clicks_list.append(click)

    for coords in neg_points:
        click = Click(False, (coords[1], coords[0]))
        clicks_list.append(click)
    return clicks_list


def get_pos_neg_points_list_from_context(context):
    pos_points = context["positive"]
    neg_points = context["negative"]

    pos_points_list = []
    for coords in pos_points:
        pos_point = []
        for coord in coords:
            pos_point.append(coords[coord])
        pos_points_list.append(pos_point)

    neg_points_list = []
    for coords in neg_points:
        neg_point = []
        for coord in coords:
            neg_point.append(coords[coord])
        neg_points_list.append(neg_point)
    return pos_points_list, neg_points_list


def unpack_bitmap(bitmap, bbox_origin_y, bbox_origin_x):
    bitmap_json = bitmap.to_json()["bitmap"]
    bitmap_origin = bitmap_json["origin"]
    bitmap_origin = {"y": bbox_origin_y + bitmap_origin[1], "x": bbox_origin_x + bitmap_origin[0]}

    bitmap_data = bitmap_json["data"]
    return bitmap_origin, bitmap_data


@functools.lru_cache(maxsize=100)
def get_image_by_hash(hash, save_path):

    g.api.image.download_paths_by_hashes([hash], [save_path])
    base_image = sly.image.read(save_path)
    silent_remove(save_path)

    return base_image


@functools.lru_cache(maxsize=100)
def get_image_by_id(image_id):
    return g.api.image.download_np(image_id)


def get_bitmap_from_mask(mask, cropped_shape):
    bool_mask = np.array(mask, dtype=bool)
    bitmap = sly.Bitmap(bool_mask)
    mask_shape = mask.shape[:2]
    if cropped_shape != mask_shape:
        bitmap = bitmap.resize(mask_shape, cropped_shape)

    return bitmap


def optimize_crop(crop_np):
    max_crop_dim = 1000  # limits max crop dimension for app optimization
    resized_shape = None
    height, width = crop_np.shape[:2]
    if height > max_crop_dim or width > max_crop_dim:
        base_height = 720
        base_width = 800

        ap_ratio = width / height
        if height > width:
            new_height = base_height
            new_width = math.ceil(new_height * ap_ratio)
        else:
            new_width = base_width
            new_height = math.ceil(new_width / ap_ratio)

        resized_shape = (new_height, new_width)
        crop_np = sly.image.resize(crop_np, resized_shape)

    cropped_shape = (height, width)
    return crop_np, cropped_shape, resized_shape


def process_bitmap_from_clicks(data):
    x1, y1, x2, y2 = get_smart_bbox(data["crop"])
    pos_points, neg_points = get_pos_neg_points_list_from_context(data)
    bbox = sly.Rectangle(y1, x1, y2, x2)

    base_image_np = download_image_from_context(data)
    crop_np = sly.image.crop(base_image_np, bbox)

    crop_np, cropped_shape, resized_shape = optimize_crop(crop_np)
    pos_points, neg_points = get_pos_neg_points_list_from_context_bbox_relative(
        x1, y1, pos_points, neg_points, cropped_shape, resized_shape
    )
    clicks_list = get_click_list_from_points(pos_points, neg_points)

    res_mask = mask_image.get_mask_from_clicks(crop_np, clicks_list)
    if res_mask is not None and np.any(np.array(res_mask, dtype=bool)):
        bitmap = get_bitmap_from_mask(res_mask, cropped_shape)
        bitmap_origin, bitmap_data = unpack_bitmap(bitmap, y1, x1)
    else:
        bitmap_origin, bitmap_data = None, None

    return bitmap_origin, bitmap_data
