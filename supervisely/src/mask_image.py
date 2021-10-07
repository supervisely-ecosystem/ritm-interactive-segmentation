import sly_globals as g


def get_mask_from_clicks(image_np, clicks_list):
    g.controller.set_image(image_np)
    for click in clicks_list:
        g.controller.add_click(click.coords[1], click.coords[0], click.is_positive)
    res_mask = g.controller.result_mask
    return res_mask
