#!/bin/bash

# Variables
REMOTE_USER="diego"
REMOTE_HOST="diego.arkania.es"
REPO_URL="git@github.com:TheReported/travelroad_laravel.git"
TARGET_DIR="travelroad_laravel"

# Conexión SSH y clonar el repositorio
ssh "$REMOTE_USER@$REMOTE_HOST" "
  if [ ! -d $TARGET_DIR ]; then
    echo 'Clonando el repositorio...'
    git clone $REPO_URL
    cd $TARGET_DIR
    echo 'Realizando composer install...'
    composer install
  else
    echo 'El directorio ya existe.'
    cd $TARGET_DIR
    git pull
  fi
"
cd ~/$TARGET_DIR/ && scp .env "$REMOTE_USER@$REMOTE_HOST":/home/diego/$TARGET_DIR/
