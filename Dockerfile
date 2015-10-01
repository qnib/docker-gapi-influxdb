FROM qnib/graphite-api

RUN curl -fsL wget https://github.com/Civil/graphite-influxdb/archive/master.zip |bsdtar xf - -C /opt/ 
RUN cd /opt/graphite-influxdb-master && python setup.py install
VOLUME ["/tmp/graphite-api-cache"]
ADD etc/graphite-api.yaml /etc/graphite-api.yaml
