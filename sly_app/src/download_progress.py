from functools import partial

import supervisely as sly


def reset_progress(api, task_id):
    _set_progress(api, task_id, None, 0, 0, 0, 0)


def _set_progress(api, task_id, message, current_label, total_label, current, total):
    fields = [
        {"field": "data.progressName", "payload": message},
        {"field": "data.currentProgressLabel", "payload": current_label},
        {"field": "data.totalProgressLabel", "payload": total_label},
        {"field": "data.currentProgress", "payload": current},
        {"field": "data.totalProgress", "payload": total},
    ]
    # api.task.set_fields(task_id, fields)


def update_progress(count, api: sly.Api, task_id, progress: sly.Progress):
    count = min(count, progress.total - progress.current)
    progress.iters_done(count)
    if progress.need_report():
        progress.report_progress()


def get_progress_cb(api, task_id, message, total, is_size=False, func=update_progress):
    progress = sly.Progress(message, total, is_size=is_size)
    progress_cb = partial(func, api=api, task_id=task_id, progress=progress)
    progress_cb(0)
    return progress_cb
