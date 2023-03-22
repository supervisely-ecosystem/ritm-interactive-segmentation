import sly_app.src.sly_globals as g
import supervisely as sly


def get_mask_from_clicks(image_np, clicks_list):
    g.CONTROLLER.set_image(image_np)
    for click in clicks_list:
        g.CONTROLLER.add_click(click.coords[1], click.coords[0], click.is_positive)
    try:

        res_mask = g.CONTROLLER.result_mask
        g.CONTROLLER.set_mask(res_mask)
    except ValueError as e:
        sly.logger.error(f"Couldn't process image. Error:{e}")
        res_mask = None

    g.CONTROLLER.finish_object()

    return res_mask
