# Imagem base
FROM osrf/ros:humble-desktop-full

# Configuração do ambiente
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc && \
    echo "export ROS_DOMAIN_ID=20" >> ~/.bashrc

# Copiar arquivos locais pro container
COPY ../workspace /workspace
COPY ../bag_files /workspace/bag_files
COPY ../scripts /workspace/scripts
COPY ../turtlesim.yaml /workspace/turtlesim.yaml

# Definir diretório de trabalho
WORKDIR /workspace

# Rodar comandos de configuração, build, etc.
RUN chmod +x /workspace/scripts/run.sh && \
    . /opt/ros/humble/setup.sh && \
    colcon build --symlink-install

# Definir comando padrão ao rodar o container
CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && source /workspace/install/setup.bash && /workspace/scripts/run.sh"]
