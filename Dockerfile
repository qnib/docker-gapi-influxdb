FROM qnib/graphite-api
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y python-pip && \
    pip install graphite_influxdb
VOLUME ["/tmp/graphite-api-cache"]
ADD etc/graphite-api.yaml /etc/graphite-api.yaml
