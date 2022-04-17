# docker_tutorial

## Requirements
* Docker

## Usage
1. Download
```bash
git clone https://github.com/ozakiryota/docker_tutorial.git
```
2. Check [Dockerfile](https://github.com/ozakiryota/docker_tutorial/blob/main/Dockerfile) and other files
3. Build image
```bash
# build.sh

cd docker_tutorial
docker build . \
    -t docker_tutorial:ubuntu20
```
4. Run container
```bash
# run.sh

docker run \
    -it \
    --rm \
    -v $(pwd)/mount_file:/root/tutorial_ws/mount_file \
    docker_tutorial:ubuntu20
```

5. Run container with command
```bash
# hello.sh

docker run \
    --rm \
    -v $(pwd)/mount_file:/root/tutorial_ws/mount_file \
    docker_tutorial:ubuntu20 \
    bash -c "./hello"
```
