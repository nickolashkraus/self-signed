# Self-Signed

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nickolashkraus/self-signed?color=blue)](https://cloud.docker.com/u/nickolashkraus/repository/docker/nickolashkraus/self-signed)
[![Releases](https://img.shields.io/github/v/release/nickolashkraus/self-signed?color=blue)](https://github.com/nickolashkraus/self-signed/releases)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/nickolashkraus/self-signed/blob/master/LICENSE)

[Docker Hub](https://cloud.docker.com/u/nickolashkraus/repository/docker/nickolashkraus/self-signed)

Self-Signed provides a working example of how to create a self-signed certificate for NGINX.

## Getting Started

To get started with Self-Signed, simply pull the Docker image:

```bash
docker pull nickolashkraus/self-signed
```

Run `self-signed.sh`:

```bash
./self-signed.sh
```

Run NGINX:

```bash
sudo nginx -c $(pwd)/nginx/nginx.conf
```

Run the Docker image:

```bash
docker run \
  -p 1313:1313 \
  nickolashkraus/self-signed:latest
```
