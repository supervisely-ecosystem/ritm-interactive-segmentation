import os
import supervisely as sly


def main():
    api = sly.Api.from_env()

    task_id = int(os.environ["TASK_ID"])

    context = {"data_to_process": {
        0: {'crop': [{'x': 106, 'y': 83}, {'x': 552, 'y': 400}],
            'positive': [{'x': 223, 'y': 102}, {'x': 235, 'y': 264}, {'x': 204, 'y': 169}, {'x': 289, 'y': 200}],
            'negative': [],
            'image_hash': 'YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs='},
        1: {'crop': [{'x': 350, 'y': 430}, {'x': 692, 'y': 754}],
            'positive': [{'x': 534, 'y': 603}],
            'negative': [],
            'image_hash': 'YZKQrZH5C09u5m30Bz8GeYs='},
        2: {'crop': [{'x': 698, 'y': 365}, {'x': 1048, 'y': 623}],
            'positive': [{'x': 873, 'y': 494}],
            'negative': [],
            'image_hash': 'YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs='},
        3: {'crop': [{'x': 509, 'y': 180}, {'x': 968, 'y': 463}],
            'positive': [{'x': 739, 'y': 322}, {'x': 588, 'y': 250}],
            'negative': [{'x': 617, 'y': 427}, {'x': 869, 'y': 224}],
            'image_hash': 'ZdpMD+ZMJx0R8BgsCzJcqM7qP4M8f1AEtoYc87xZmyQ='}
        }
    }

    response = api.task.send_request(task_id, "smart_segmentation_batched", data={}, context=context, timeout=60)
    # print("APP returns data:")
    # print(json.loads(response))


if __name__ == "__main__":
    main()
