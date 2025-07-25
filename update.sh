#! /bin/bash

echo "Starting the update process..."
set -e
echo "Ollama needs to be updated manually on MacOS. Please use the Ollama application to update it."

echo "Updating Docker containers ..."
docker run --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --run-once open-webui-container