# docker-pgcli

A minimal Docker image for [pgcli](https://www.pgcli.com/), a command-line interface for PostgreSQL with auto-completion and syntax highlighting.

![Build Status](https://github.com/vladtara/docker-pgcli/actions/workflows/build_and_push.yml/badge.svg)

## Features

- Based on `python:3.13.5-alpine3.22` for a small footprint
- Installs `pgcli` **version 4.0.1** and `psycopg[binary]` using [uv](https://github.com/astral-sh/uv) for fast dependency management
- Automated builds and publishing via GitHub Actions

## Usage

### Pull from GitHub Container Registry

```sh
docker pull ghcr.io/vladtara/docker-pgcli:latest
```

### Run pgcli

```sh
docker run --rm -it ghcr.io/vladtara/docker-pgcli \
  -h <host> -U <user> <database>
```

Replace `<host>`, `<user>`, and `<database>` with your PostgreSQL connection details.

### Example

```sh
docker run --rm -it ghcr.io/vladtara/docker-pgcli \
  -h localhost -U postgres postgres
```

## Build Locally

```sh
docker build -t docker-pgcli .
```

## Continuous Integration

Docker images are automatically built and published for the `linux/amd64` platform using [GitHub Actions](.github/workflows/build_and_push.yml) on every push to `main`.

## License

[MIT](LICENSE)
