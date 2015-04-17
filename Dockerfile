FROM qnib/graphite-api
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y python-pip 
#RUN pip install graphite_influxdb
RUN cd /opt/ && wget https://github.com/Civil/graphite-influxdb/archive/master.zip && \
    unzip -q master.zip && cd /opt/graphite-influxdb-master && python setup.py install
VOLUME ["/tmp/graphite-api-cache"]
ADD etc/graphite-api.yaml /etc/graphite-api.yaml
