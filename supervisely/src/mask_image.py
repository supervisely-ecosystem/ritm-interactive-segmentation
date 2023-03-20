import sly_globals as g

# from isegm.inference.clicker import Click


def get_mask_from_clicks(image_np, clicks_list):
    if image_np is None:
        print(image_np)
    g.CONTROLLER.set_image(image_np)
    for click in clicks_list:
        g.CONTROLLER.add_click(click.coords[1], click.coords[0], click.is_positive)
    try:
        res_mask = g.CONTROLLER.result_mask
        g.CONTROLLER.set_mask(res_mask)
    except ValueError(f"Couldn't process image"):
        res_mask = None

    g.CONTROLLER.finish_object()

    return res_mask
