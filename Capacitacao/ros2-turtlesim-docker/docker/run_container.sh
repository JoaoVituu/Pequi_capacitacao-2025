#!/bin/bash

# Dar permissão para o Docker acessar o display (X11)
xhost +local:docker

# Construir a imagem Docker
docker build -t ros2-turtlesim .

# Rodar o container com suporte à GUI
docker run -it --rm \
    --env DISPLAY=$DISPLAY \
    --env QT_X11_NO_MITSHM=1 \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
    ros2-turtlesim

# Opcional: revogar acesso após rodar
xhost -local:docker
