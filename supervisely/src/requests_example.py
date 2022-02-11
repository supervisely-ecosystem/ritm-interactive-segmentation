import os
import json
import supervisely as sly


def main():
    api = sly.Api.from_env()

    task_id = int(os.environ["TASK_ID"])

    context_batch = {
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
        3: {'crop': [{'x': 509, 'y': 180}, {'x': 968, 'y': 463}],
            'positive': [{'x': 739, 'y': 322}, {'x': 588, 'y': 250}],
            'negative': [{'x': 617, 'y': 427}, {'x': 869, 'y': 224}],
            'image_hash': 'ZdpMD+ZMJx0R8BgsCzJcqM7qP4M8f1AEtoYc87xZmyQ=',
            'request_id': 'c801fd40-b52d-478a-b64b-0667175056b4'}
    }

    response = api.task.send_request(task_id, "smart_segmentation", data={}, context=context_batch, timeout=60)
    # print("APP returns data:")
    # print(json.loads(response))


if __name__ == "__main__":
    main()
