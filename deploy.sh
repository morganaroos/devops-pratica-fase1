#!/bin/bash

APP_NAME="devops-pratica-fase2"
IMAGE_NAME="devops-pratica-fase2"

echo "Parando container antigo..."
docker stop $APP_NAME || true

echo "Removendo container antigo..."
docker rm $APP_NAME || true

echo "Criando nova imagem..."
docker build -t $IMAGE_NAME .

echo "Subindo aplicação..."
docker run -d \
  --name $APP_NAME \
  -p 80:80 \
  $IMAGE_NAME

echo "Deploy concluído!"