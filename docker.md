## build

```sh
docker build -t docker.uberott.net/nginx_exporter:latest .

docker push docker.uberott.net/nginx_exporter:latest
```

## run

```sh

docker pull docker.uberott.net/nginx_exporter:latest

docker create --name=nginx_exporter -p 9090:9090 \
  --add-host=nginx:<docker0_ip> \
  docker.uberott.net/nginx_exporter:latest


docker start nginx_exporter
```
