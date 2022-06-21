FROM ruby:2.5

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /rails_docker
COPY Gemfile Gemfile.lock /rails_docker/
RUN bundle install