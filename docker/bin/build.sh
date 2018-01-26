#!/bin/sh
cp ../build/libs/jaxrs-kotlin-example.war files
docker build -t kazusato/jaxrs-kotlin-example:0.1 \
	--force-rm --no-cache .
