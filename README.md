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


# To start the stack from now on:

docker compose up --build        # first time or after code changes
docker compose up -d             # subsequent starts (detached)
docker compose down              # stop
docker compose down -v           # stop + wipe DB volume