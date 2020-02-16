FROM confluentinc/cp-ksql-server-operator:5.4.0.0
RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y dist-upgrade 

