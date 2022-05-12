# docker build --no-cache -t jupyter .
docker build -t jupyter .
docker run -p 8888:8888 -v "$(pwd)/workdir":/workdir/ jupyter

