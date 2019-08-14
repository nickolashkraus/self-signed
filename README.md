# Self-Signed

[![](https://images.microbadger.com/badges/image/nickolashkraus/self-signed.svg)](https://microbadger.com/images/nickolashkraus/self-signed)
[![](https://images.microbadger.com/badges/version/nickolashkraus/self-signed.svg)](https://microbadger.com/images/nickolashkraus/self-signed)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/NickolasHKraus/self-signed/blob/master/LICENSE)

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
