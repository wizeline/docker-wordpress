#!/bin/sh

loadEnv(){
    if [[ $(uname -m) == 'arm64' ]]; then
    export DB_IMAGE="arm64v8/mariadb:10.10"
    export WP_IMAGE="arm64v8/wordpress"
    else
    export DB_IMAGE="mariadb:10.6.13-focal"
    export WP_IMAGE="wordpress:latest"
    fi
}

wpClone(){
    git clone https://github.com/WordPress/WordPress.git html
}

dockerUp(){ 
    docker compose up -d
}

dockerStop(){
    docker compose stop
}

install(){
    rm -rf html
    docker compose rm -s -f
    wpClone
    docker compose up -d
}
# Download wp
loadEnv

option="${1}" 
case ${option} in 
    "install") install
      ;; 
   "start") dockerUp
      ;; 
   "stop") dockerStop 
      ;; 
   *)  
      echo "`basename ${0}`:usage: [install] | [start] | [stop]" 
      exit 1 # Command to come out of the program with status 1
      ;; 
esac
