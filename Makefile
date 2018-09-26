.PHONY: run

run:
	docker run -i --rm -p 53:53/tcp -p 53:53/udp --name bind \
	--env DNSSEC_VALIDATE=yes \
	--env DNS_FORWARDER=10.55.0.2,8.8.8.8 \
	--env DOCKER_LOGS=1 \
	bind
