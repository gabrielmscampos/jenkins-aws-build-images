#!/bin/bash

BUILD_DATE=$(date +'%Y%m%d')

docker build -t gabrielmscampos/sam-build-python3.8-poetry1.4.2-docker:$BUILD_DATE -f Dockerfile_python38_poetry142_docker .
docker build -t gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs12.x-docker:$BUILD_DATE -f Dockerfile_python38_poetry142_nodejs12x_docker .
docker build -t gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs14.x-docker:$BUILD_DATE -f Dockerfile_python38_poetry142_nodejs14x_docker .
docker build -t gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs16.x-docker:$BUILD_DATE -f Dockerfile_python38_poetry142_nodejs16x_docker .

docker tag gabrielmscampos/sam-build-python3.8-poetry1.4.2-docker:$BUILD_DATE gabrielmscampos/sam-build-python3.8-poetry1.4.2-docker:latest
docker tag gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs12.x-docker:$BUILD_DATE gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs12.x-docker:latest
docker tag gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs14.x-docker:$BUILD_DATE gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs14.x-docker:latest
docker tag gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs16.x-docker:$BUILD_DATE gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs16.x-docker:latest

docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-docker:$BUILD_DATE
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs12.x-docker:$BUILD_DATE
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs14.x-docker:$BUILD_DATE
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs16.x-docker:$BUILD_DATE

docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-docker:latest
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs12.x-docker:latest
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs14.x-docker:latest
docker push gabrielmscampos/sam-build-python3.8-poetry1.4.2-nodejs16.x-docker:latest
