ARG DOCKER_RUBY_TAG
FROM ruby:${DOCKER_RUBY_TAG}

WORKDIR /app

RUN apt update \
  && apt install -y \
    gcc \
    make \
    iputils-ping \
    net-tools

COPY Gemfile* ./

RUN bundle install
