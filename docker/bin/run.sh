#!/bin/sh
docker run \
  -d \
  --name jaxrs-kotlin-example \
  -p 8080:8080 \
  kazusato/jaxrs-kotlin-example:0.1 \
  java \
  -jar /opt/payara/payara-micro.jar \
	--deploymentDir /opt/payara/deployments \
  --logToFile /var/log/payara/payara-micro.log
