# envoy-docker-postgres-base


A Docker build that adds the official Envoy binary to the official Postgres image by copying between the official containers.

This is mostly for testing Envoy configuration.

```sh
docker run -e SERVICE_NAME=test-service -e SERVICE_CLUSTER=test-service -e XDS_HOST=172.17.8.101 -e XDS_PORT=18000 -ti chtorr/envoy-docker-postgres-base
```
