---
title: "About"
date: 2018-02-27T12:00:00-06:00
draft: false
layout: about.html
---

# Self-Signed

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
