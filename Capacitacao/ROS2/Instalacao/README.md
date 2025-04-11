# 🤖 Instalação ROS2

## 🏠 Definir Localidade
```bash
locale 

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  
```
## ⚙️ Habilitar repositórios

### Repositório Ubuntu Universe
```bash
sudo apt install software-properties-common
sudo add-apt-repository universe
```

### Adicionar a chave ROS 2 GPG
```bash
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
```

### Adicionar a lista de fontes
```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
```

### Instalar ferramentas de desenvolvimento
```bash
sudo apt update && sudo apt install ros-dev-tools
```

## ⬇️ Instalar ROS2

### Atualização e verificação do sistema
```bash
sudo apt update
```
```bash
sudo apt upgrade
```

### Instalação para Desktop e Instalação básica do ROS
```bash
sudo apt install ros-jazzy-desktop
```
```bash
sudo apt install ros-jazzy-ros-base
```

## Configuração do ambiente
```bash
source /opt/ros/jazzy/setup.bash
```

## 💬 Teste com talker e listener

### Terminal Talker
```bash
source /opt/ros/jazzy/setup.bash
ros2 run demo_nodes_cpp talker
```

### Terminal Listener
```bash
source /opt/ros/jazzy/setup.bash
ros2 run demo_nodes_py listener
```
![Teste ROS2](../Instalacao/images/TesteROS2.png)