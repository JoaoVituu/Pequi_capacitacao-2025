# Simulação do Turtlebot3

## Configuração do sistema 

### Criando um workspace para ROS2
```bash
mkdir -p turtlebot_ros2/src
```

![Workspace Turtlebot](../Simulacao/images/Workspace.png)

### Iniciando o conteiner do Turtlebot
No diretório do INF0429 execute o código:
```bash
sudo ./run.sh turtle_capacitacao
```
![Conteiner Iniciado](../Simulacao/images/IniciandoDocker.png)

### Modelo do Turtlebot3
O padrão é o modelo waffle
```bash
export TURTLEBOT3_MODEL=burger  # Opções: burger, waffle, waffle_pi
```

## Simulação no Gazebo

### Mundo Vazio
```bash
ros2 launch turtlebot3_gazebo empty_world.launch.py
```
Modelo Waflle:
![Mundo Vazio com o Modelo Waffle](./images/VazioWaffle.png)
Modelo Waflle_pi:
![Mundo Vazio com o Modelo Waffle_pi](./images/VazioWaffle_pi.png)
Modelo Burger:
![Mundo Vazio com o Modelo Burger](./images/VazioBurger.png)

### Mundo Padrão
```bash
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
```
Modelo Waflle:
![Mundo Padrão com o Modelo Waffle](./images/VazioWaffle.png)
Modelo Waflle_pi:
![Mundo Padrão com o Modelo Waffle_pi](./images/VazioWaffle_pi.png)
Modelo Burger:
![Mundo Padrão com o Modelo Burger](./images/VazioBurger.png)