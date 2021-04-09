# Nodejs image for VCubi Platform

![Version](https://img.shields.io/badge/NodeJS-14.16.1-blue)
![Arch](https://img.shields.io/badge/Arch-amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-nodejs/workflows/ci/badge.svg)

The project contains NodeJS image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/nodejs)

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use
    # Pull image
    docker pull leadstec/nodejs:latest

    # Build image
    docker-compose build .

    # Image Structure Test
    container-structure-test test --image leadstec/nodejs:tag --config tests/nodejs.yaml

## LCS Schema & ENV

| ENV Variable              | Description               | Default | Accept Values |
|---------------------------|---------------------------|---------|---------------|
| NODE_ENV                  |                           | development |     |



