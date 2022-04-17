FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y build-essential

COPY copy_file/hello_world.cpp /home/hello_world.cpp

ENV ws_path /root/tutorial_ws

RUN mkdir -p $ws_path && \
	mv /home/hello_world.cpp $ws_path/hello_world.cpp && \
	cd $ws_path && \
	g++ hello_world.cpp -o hello_world

WORKDIR $ws_path

RUN mv hello_world hello