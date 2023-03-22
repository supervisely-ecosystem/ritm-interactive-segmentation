import sly_globals as g
import supervisely as sly


def get_mask_from_clicks(controller, image_np, clicks_list):
    if image_np is None:
        print(image_np)
    controller.set_image(image_np)
    for click in clicks_list:
        controller.add_click(click.coords[1], click.coords[0], click.is_positive)
    try:
        res_mask = controller.result_mask
        controller.set_mask(res_mask)
    except ValueError as e:
        sly.logger.error(f"Couldn't process image. Error:{e}")
        res_mask = None

    controller.finish_object()

    return res_mask
