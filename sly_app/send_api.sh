#!/bin/bash

for i in {1..100}
do
curl --location 'http://localhost:8000/smart_segmentation' \
--header 'Content-Type: application/json' \
--data '{
    "context": {
        "crop": [{"x": 106, "y": 83}, {"x": 552, "y": 400}],
        "positive": [
            {"x": 223, "y": 102},
            {"x": 235, "y": 264},
            {"x": 204, "y": 169},
            {"x": 289, "y": 200}
        ],
        "negative": [],
        "image_hash": "YZKQrZH5C0rBvGGA3p7hjWahz3/pV09u5m30Bz8GeYs="
    }
}' &
done

