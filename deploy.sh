#!/bin/bash

echo "Parando containers antigos..."
docker compose down

echo "Criando nova imagem..."
docker compose build

echo "Subindo aplicação..."
docker compose up -d

echo "Deploy concluído!"