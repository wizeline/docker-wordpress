#!/bin/sh

# Create the db Volume
mkdir db
# Download wp
git clone https://github.com/WordPress/WordPress.git html
# Docker
docker-compose up -d