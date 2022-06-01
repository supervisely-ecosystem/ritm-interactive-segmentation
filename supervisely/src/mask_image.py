import sly_globals as g


def get_mask_from_clicks(image_np, clicks_list):
    g.CONTROLLER.set_image(image_np)
    for click in clicks_list:
        g.CONTROLLER.add_click(click.coords[1], click.coords[0], click.is_positive)
    try:
        res_mask = g.CONTROLLER.result_mask
    except Exception(f"Couldn't process image"):
        res_mask = None

    g.CONTROLLER.finish_object()

    return res_mask
