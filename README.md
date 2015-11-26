# haproxy

[![Docker Repository on Quay](https://quay.io/repository/lock8/haproxy-in-docker/status "Docker Repository on Quay")](https://quay.io/repository/lock8/haproxy-in-docker)

## start
```bash
docker run -v --net=your-netowrk /etc/opt/haproxy/:/etc/haproxy/ --name=haproxy --privileged quay.io/lock8/haproxy-in-docker:latest
```

## Add one additional backend

```bash
docker run --net=your-netowrk --name=backend1 whatever/xxx
```

## update config file
```bash
vim /etc/opt/haproxy/haproxy.cfg
```

## Soft reload

```bash
docker exec haproxy /reload.sh
```
