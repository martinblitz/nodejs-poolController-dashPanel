#!/bin/bash

read PCD_NAME < POOLCONTROLLER_DASHBOARD_NAME
read PCD_VERSION < POOLCONTROLLER_DASHBOARD_VERSION

echo building version ${PCD_NAME}:${PCD_VERSION}

docker build . --build-arg PCD_VERSION=${PCD_VERSION} -t ${PCD_NAME}:${PCD_VERSION}
docker build . --build-arg PCD_VERSION=${PCD_VERSION} -t ${PCD_NAME}:latest
