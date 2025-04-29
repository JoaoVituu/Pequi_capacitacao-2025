# Usar imagem base do ROS 2 Jazzy
FROM ros:jazzy-ros-base

# Instalar dependências
RUN apt-get update && apt-get install -y \
    ros-jazzy-turtlesim \
    ros-jazzy-teleop-twist-keyboard \
    && rm -rf /var/lib/apt/lists/*

# Configurar o diretório de trabalho no container
WORKDIR /workspace

# Copiar o código fonte do projeto para dentro do container
COPY workspace /workspace

# Instalar dependências do workspace
RUN . /opt/ros/jazzy/setup.sh && \
    colcon build --symlink-install

# Fonte do ambiente ROS2
SHELL ["/bin/bash", "-c"]

# Rodar somente o node visual do turtlesim
CMD ["bash", "-c", "\
  source /opt/ros/jazzy/setup.bash && \
  source /workspace/install/setup.bash && \
  ros2 run turtlesim turtlesim_node"]
