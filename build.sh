#/bin/bash

docker build -t blog-demo-api ./api/.
docker tag blog-demo-api:latest ryohang/blog-demo-api:latest
docker push ryohang/blog-demo-api

docker build -t blog-demo-worker ./worker/.
docker tag blog-demo-worker:latest ryohang/blog-demo-worker:latest
docker push ryohang/blog-demo-worker