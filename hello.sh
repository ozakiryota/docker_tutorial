#!/bin/bash

docker run \
    --rm \
    -v $(pwd)/mount_file:/root/tutorial_ws/mount_file \
    docker_tutorial:ubuntu20 \
    bash -c "./hello"