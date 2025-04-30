# 🐳 Dockerização

## 🛠️ Construção da imagem Docker

Para criar a imagem Docker, vá o diretório em que o arquivo Dockerfile está (ros2-turltesim-docker) e execute:

```bash
docker build -t ros2-turtlesim-f docker/Dockerfile .
```
## ⚙️ Definir o run.sh como executavel 

Para tornar o arquivo run.sh como executavel no diretorio em que o arquivo run.sh está (scripts) e execute 

```bash
chmod +x run.sh
```

## ▶️ Executar a imagem Docker

Para executar a imagem gerada, no mesmo local onde o arquivo run.sh (scripts) está utilize:

```bash
./run.sh ros2-turtlesim-f
```
