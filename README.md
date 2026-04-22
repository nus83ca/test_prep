# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Useful Docker Commands

First time or after code changes:

```bash
docker compose up --build
```

Subsequent starts (detached):

```bash
docker compose up -d
```

Stop:

```bash
docker compose down
```

Stop + wipe DB volume:

```bash
docker compose down -v
```