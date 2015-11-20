# haproxy

## start
```bash
docker run -v --net=your-netowrk /etc/opt/haproxy/:/etc/haproxy/ --name=haproxy lock8/haproxy-in-docker:latest
```

## one backend

```bash
docker run --net=your-netowrk --name=backend1 whatever/xxx
```

## Soft reload

```bash
docker exec haproxy /reload.sh
```
