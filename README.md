# Test Prep Rails App

Rails 7.1 app running with Docker and PostgreSQL.

## Build Environment

This project is pinned to:

- Ruby `3.1.4-p223`
- Bundler `2.3.26`
- Rake `13.0.6`

Where these are defined:

- Docker base image and Bundler install in `Dockerfile`
- Ruby and Rake gem constraints in `Gemfile`
- Locked Ruby/Bundler metadata and gem versions in `Gemfile.lock`

## Run with Docker

First time or after dependency/code changes:

```bash
docker compose up --build
```

Subsequent starts (detached):

```bash
docker compose up -d
```

Stop services:

```bash
docker compose down
```

Stop and remove volumes (including DB data):

```bash
docker compose down -v
```

## Quick Version Checks

Check runtime versions inside the app container:

```bash
docker compose run --rm web ruby -v
docker compose run --rm web bundle -v
docker compose run --rm web bundle exec rake -V
```