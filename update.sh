#! /bin/bash

echo "Starting the update process..."
set -e
echo "Updating Ollama ..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Updating Docker containers ..."
docker run --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --run-once open-webui-container