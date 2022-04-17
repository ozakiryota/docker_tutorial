#!/bin/bash

docker run \
    -it \
    --rm \
    -v $(pwd)/mount_file:/root/tutorial_ws/mount_file \
    docker_tutorial:ubuntu20