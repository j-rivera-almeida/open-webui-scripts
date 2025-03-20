#! /bin/bash

docker run -d \
    -p 3000:8080 \
    --add-host=host.docker.internal:host-gateway \
    -v open-webui-volume:/app/backend/data \
    --name open-webui-container \
    --restart unless-stopped ghcr.io/open-webui/open-webui:main