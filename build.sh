#!/bin/bash

read PCD_NAME < POOLCONTROLLER_DASHPANEL_NAME
read PCD_VERSION < POOLCONTROLLER_DASHPANEL_VERSION

echo building version ${PCD_NAME}:${PCD_VERSION}

docker build . --build-arg PCD_VERSION=${PCD_VERSION} -t ${PCD_NAME}:${PCD_VERSION}
docker build . --build-arg PCD_VERSION=${PCD_VERSION} -t ${PCD_NAME}:latest
