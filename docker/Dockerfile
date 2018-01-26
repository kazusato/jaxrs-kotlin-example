FROM payara/micro:174
LABEL maintainer="kazusato"
COPY files/jaxrs-kotlin-example.war /opt/payara/deployments
USER root
RUN mkdir /var/log/payara && \
  chown payara:payara /var/log/payara
USER payara
ENTRYPOINT [""]

