FROM ruby:3.1.4

WORKDIR /basic_app

# Build dependencies for pg/native gems and postgres client for health checks/debugging.
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
  build-essential \
  libpq-dev \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.3.26 && bundle _2.3.26_ install

COPY . .

EXPOSE 3000
CMD ["bash", "-lc", "rm -f tmp/pids/server.pid && bundle exec rails server -b 0.0.0.0 -p 3000"]
