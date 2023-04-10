# Infrastructure Guide

In this repo every software we use is documented on how to install in a new infrastructure.

> All our servers run linux on it so all guides are also based on linux

# Configure env variables

Run `setupEnv.sh` with `source`(short `.`):

```bash
. setupEnv.sh
```

## Running infrastructure

Create `aquahubstudio` network:

```bash
docker network create aquahubstudio
```

Create **nginx proxy manager** container:

```bash
docker compose -f nginx-proxy-manager/docker-compose.yml up -d [--force-recreate]
```

Create **portainer** container:

```bash
docker compose -f portainer/docker-compose.yml up -d [--force-recreate]
```

Create **ghost** container:

```bash
docker compose -f ghost/docker-compose.yml up -d [--force-recreate]
```

Create **duplicati** container:

```bash
docker compose -f duplicati/docker-compose.yml up -d [--force-recreate]
```

### Run everything with single command

```bash
docker compose -f nginx-proxy-manager/docker-compose.yml up -d &&
docker compose -f portainer/docker-compose.yml up -d &&
docker compose -f ghost/docker-compose.yml up -d &&
docker compose -f duplicati/docker-compose.yml up -d
```

## Services

-   Ghost (blogging)
-   Nginx proxy manager
-   Portainer
-   Duplicati
