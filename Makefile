SHELL=/bin/bash

test: docker_build_test docker_run_test

docker_build_test:
	docker-compose -f docker-compose.yml -p test build

docker_run_test:
	docker-compose -f docker-compose.yml -p test up -d
	docker logs -f test_sut_1
