FROM alpine:3.11
WORKDIR /opt
ENV KSQL_VERSION 5.3.2-cp1-rc9
RUN wget https://github.com/confluentinc/ksql/archive/v${KSQL_VERSION}.zip
RUN unzip v${KSQL_VERSION}.zip
ENTRYPOINT ${KSQL_VERSION}/bin/ksql-server-start
RUN find ${KSQL_VERSION}/bin  

