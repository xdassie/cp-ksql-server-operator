FROM alpine:3.11
WORKDIR /opt
ENV KSQL_VERSION 5.3.2-cp1-rc9
RUN apk update && apk add bash
RUN wget https://github.com/confluentinc/ksql/archive/v${KSQL_VERSION}.zip
RUN unzip v${KSQL_VERSION}.zip
RUN find ksql-${KSQL_VERSION} -name bin
ENTRYPOINT /bin/bash 
CMD ["/opt/ksql-${KSQL_VERSION}/bin/ksql-server-start","/opt/ksql-${KSQL_VERSION}/config/ksql-server.properties"]




