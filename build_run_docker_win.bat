::docker build --no-cache -t jupyter .
docker build -t jupyter .
docker run -p 8888:8888 -v "%cd%\workdir":/workdir/ jupyter
