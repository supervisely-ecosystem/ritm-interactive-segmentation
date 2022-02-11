import math
import mask_image
import load_model
import sly_functions as f
import supervisely as sly

context = {
    0: {'crop': [{'x': 106, 'y': 83}, {'x': 552, 'y': 400}],
        'positive': [{'x': 223, 'y': 102}, {'x': 235, 'y': 264}, {'x': 204, 'y': 169}, {'x': 289, 'y': 200}],
        'negative': [], 'image_hash': 'YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs=',
        'request_id': '9706b4b4-efed-42a3-b594-6df34cc0008f'},
    1: {'crop': [{'x': 350, 'y': 430}, {'x': 692, 'y': 754}], 'positive': [{'x': 534, 'y': 603}], 'negative': [],
        'image_hash': 'YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs=',
        'request_id': 'fb4ad51d-9df9-45e5-b32d-16a66b743fe0'},
    2: {'crop': [{'x': 698, 'y': 365}, {'x': 1048, 'y': 623}], 'positive': [{'x': 873, 'y': 494}], 'negative': [],
        'image_hash': 'YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs=',
        'request_id': '323e1995-a42f-4d5d-8ae5-a94b059b12ed'},
    3: {'crop': [{'x': 509, 'y': 180}, {'x': 968, 'y': 463}], 'positive': [{'x': 739, 'y': 322}, {'x': 588, 'y': 250}],
        'negative': [{'x': 617, 'y': 427}, {'x': 869, 'y': 224}],
        'image_hash': 'ZdpMD+ZMJx0R8BgsCzJcqM7qP4M8f1AEtoYc87xZmyQ=',
        'request_id': 'c801fd40-b52d-478a-b64b-0667175056b4'}
}


def ritm_batch_process(context):
    response_batch = {}
    for idx, request in context.items():
        x1, y1, x2, y2 = f.get_smart_bbox(request["crop"])
        pos_points, neg_points = f.get_pos_neg_points_list_from_context(request)
        bbox = sly.Rectangle(y1, x1, y2, x2)

        base_image_np = f.download_image_from_context(request)
        crop_np = sly.image.crop(base_image_np, bbox)
        height, width = crop_np.shape[:2]
        cropped_shape = (height, width)
        resized_shape = None

        max_crop_dim = 1000
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

        pos_points, neg_points = f.get_pos_neg_points_list_from_context_bbox_relative(x1, y1, pos_points, neg_points,
                                                                                      cropped_shape, resized_shape)
        clicks_list = f.get_click_list_from_points(pos_points, neg_points)

        res_mask = mask_image.get_mask_from_clicks(crop_np, clicks_list, idx)
        if res_mask is not None:
            bitmap = f.get_bitmap_from_mask(res_mask, cropped_shape)
            bitmap_origin, bitmap_data = f.unpack_bitmap(bitmap, y1, x1)
            response_batch[idx] = {"bitmap": bitmap_data, "origin": bitmap_origin}
        else:
            response_batch[idx] = {"bitmap": None, "origin": None}

    return response_batch


load_model.deploy()
response = ritm_batch_process(context)
print(response)
