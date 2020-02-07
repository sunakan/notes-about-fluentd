export DOCKER_FLUENTD_TAG=v1.8-debian-1
export FLUENTD_CONF_FILE=fluentd.conf

up:
	docker run \
    --rm \
    --interactive \
    --publish 24424:24424 \
    --mount type=bind,source=${PWD}/fluent.conf,target=/fluentd/etc/fluent.conf \
    fluentd:${DOCKER_FLUENTD_TAG}
