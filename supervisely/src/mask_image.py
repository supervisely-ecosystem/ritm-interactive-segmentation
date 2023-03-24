import time

import supervisely as sly

import sly_globals as g

from supervisely._utils import generate_free_name

used_names = []


def get_mask_from_clicks(controller, image_np, clicks_list):
    controller.set_image(image_np)
    for click in clicks_list:
        controller.add_click(click.coords[1], click.coords[0], click.is_positive)
    try:
        res_mask = controller.result_mask
        controller.set_mask(res_mask)

        res_mask[res_mask != 0] = 255
        mask_name = generate_free_name(used_names, "mask.png", with_ext=True)
        sly.image.write(f"supervisely/src/masks/{mask_name}", res_mask)
    except ValueError as e:
        sly.logger.error(f"Couldn't process image. Error:{e}")
        res_mask = None

    controller.finish_object()

    return res_mask
