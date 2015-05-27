FROM       ubuntu:14.04
MAINTAINER  mlw99@outlook.com

EXPOSE     9090

CMD mdkir -p /apps/nginx_exporter/bin

WORKDIR /apps/nginx_exporter
ADD nginx_exporter bin/

CMD [ "bin/nginx_exporter", "-telemetry.address=:9090", \
  "-nginx.scrape_uri=http://nginx/nginx_status" ]
