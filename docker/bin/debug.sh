#!/bin/sh
docker run \
  -d \
  --name jaxrs-kotlin-example \
  -p 8080:8080 \
  -p 5005:5005 \
  kazusato/jaxrs-kotlin-example:0.1 \
  java \
  -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \
  -jar /opt/payara/payara-micro.jar \
	--deploymentDir /opt/payara/deployments \
  --logToFile /var/log/payara/payara-micro.log
