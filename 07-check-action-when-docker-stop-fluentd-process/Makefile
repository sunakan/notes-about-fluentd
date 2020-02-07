export DOCKER_FLUENTD_TAG=v1.8-debian-1
export FLUENTD_CONF_FILE=fluentd.conf
export MY_NETWORK=my-network

up: shared-network
	docker run \
    --rm \
    --interactive \
    --publish 24424:24424 \
    --mount type=bind,source=${PWD}/fluentd/fluent.conf,target=/fluentd/etc/fluent.conf \
    --mount type=bind,source=${PWD}/fluentd/tmp-out,target=/fluentd/my-out \
    --mount type=bind,source=${PWD}/fluentd/tmp-buffer,target=/fluentd/my-buffer \
    --name fluentd \
    --net ${MY_NETWORK} \
    fluentd:${DOCKER_FLUENTD_TAG}

build:
	cd fluent-logger-ruby && make build

shared-network:
	docker network ls | grep ${MY_NETWORK} || docker network create ${MY_NETWORK}

prune:
	docker container prune
	docker network prune
