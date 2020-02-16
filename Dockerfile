FROM alpine:3.11
WORKDIR /opt
RUN wget https://github.com/confluentinc/ksql/archive/v5.3.2-cp1-rc9.zip
RUN unzip v5.3.2-cp1-rc9.zip
RUN find ./

