# docker build --no-cache -t dockerimage .
docker build -t dockerimage .
docker run -p 8888:8888 -v "$(pwd)/workdir":/workdir/ dockerimage
