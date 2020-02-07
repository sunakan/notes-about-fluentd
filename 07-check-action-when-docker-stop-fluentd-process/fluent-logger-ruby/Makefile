export DOCKER_RUBY_TAG=2.7-slim
export MY_DOCKER_IMAGE=sunakan/fluentd-logger-ruby

build:
	docker build ./ \
    --tag ${MY_DOCKER_IMAGE} \
    --build-arg DOCKER_RUBY_TAG=${DOCKER_RUBY_TAG}

bash:
	docker run \
    --rm \
    --interactive \
    --tty \
    --mount type=bind,source=${PWD}/,target=/app \
    --net my-network \
    ${MY_DOCKER_IMAGE} \
    bash

up:
	docker run \
    --rm \
    --interactive \
    --tty \
    --mount type=bind,source=${PWD}/,target=/app \
    --net my-network \
    ${MY_DOCKER_IMAGE} \
    bundle exec ruby infinity-logger.rb
