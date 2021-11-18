import os
import numpy as np
import sly_globals as g
import supervisely_lib as sly
from isegm.inference.clicker import Click
from supervisely_lib.io.fs import silent_remove


def download_image_from_context(context):
    if context["image_hash"] in list(context.keys()):
        img_path = os.path.join(g.img_dir, "base_image.png")
        base_image_np = get_image_by_hash(context["image_hash"], img_path)
    else:
        base_image_np = g.api.video.frame.download_np(context["video"]["video_id"], context["video"]["frame_index"])
    return base_image_np


def get_smart_bbox(crop):
    x1, y1 = crop[0]["x"], crop[0]["y"]
    x2, y2 = crop[1]["x"], crop[1]["y"]
    return x1, y1, x2, y2


def get_pos_neg_points_list_from_context_bbox_relative(x1, y1, pos_points, neg_points, cropped_shape, resized_shape):
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


def get_image_by_hash(hash, save_path):
    if g.cache.get(hash) is None:
        g.api.image.download_paths_by_hashes([hash], [save_path])
        base_image = sly.image.read(save_path)
        g.cache.add(hash, base_image, expire=g.cache_item_expire_time)
        silent_remove(save_path)
    else:
        base_image = g.cache.get(hash)
    return base_image


def get_bitmap_from_mask(mask, cropped_shape):
    bool_mask = np.array(mask, dtype=bool)
    bitmap = sly.Bitmap(bool_mask)
    mask_shape = mask.shape[:2]
    if cropped_shape != mask_shape:
        bitmap = bitmap.resize(mask_shape, cropped_shape)

    return bitmap
