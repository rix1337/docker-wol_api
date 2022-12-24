# docker-wol_api

[![PyPI version](https://badge.fury.io/py/wol-api.svg)](https://badge.fury.io/py/wol-api)
[![Github Sponsorship](https://img.shields.io/badge/support-me-red.svg)](https://github.com/users/rix1337/sponsorship)

A simple flask interface to send wake on LAN commands. Just send a `POST` to `/wol/FF:FF:FF:FF:FF:FF` where `FF:FF:FF:FF:FF:FF` is the desired MAC address of the device to be woken up.

The official docker image is available at [Docker Hub](https://hub.docker.com/r/rix1337/docker-wol_api).

# Run

## Docker Run

```bash
docker run -d \
  --name="WakeOnLAN-API" \
  -e PORT=8080 \
  --net=host \
  rix1337/docker-wol_api
```
 
## Docker Compose

```yaml
version: '3.3'
services:
    docker-wol-api:
        container_name: WakeOnLAN-API
        environment:
            - PORT=8893
        network_mode: host
        image: rix1337/docker-wol_api
```
