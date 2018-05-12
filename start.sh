#!/usr/bin/env bash
set -xeuo pipefail

sed -i "s/NODE_CLUSTER/${SERVICE_CLUSTER}/" /etc/envoy.yaml
sed -i "s/NODE_ID/${SERVICE_NAME}/" /etc/envoy.yaml
sed -i "s/XDS_HOST/${XDS_HOST}/" /etc/envoy.yaml
sed -i "s/XDS_PORT/${XDS_PORT}/" /etc/envoy.yaml

envoy -c /etc/envoy.yaml & # TODO: exit if envoy fails to start due to bad config
docker-entrypoint.sh postgres
