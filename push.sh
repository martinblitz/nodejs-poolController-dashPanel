#!/bin/bash

read PCD_NAME < POOLCONTROLLER_DASHBOARD_NAME
read PCD_VERSION < POOLCONTROLLER_DASHBOARD_VERSION

echo pushing ${PCD_NAME}:${PCD_VERSION}

docker push ${PCD_NAME}:${PCD_VERSION}
docker push ${PCD_NAME}:latest

