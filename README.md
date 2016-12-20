# docker-redmon

## Build

```
$ docker build -t redmon .
```

## Run

```
$ docker run -d -e REDIS_URL=<redis host> -e HTTP_PORT=<port> -e HTTP_AUTH=<auth> redmon
```

## Example

```
$ docker run -d -e REDIS_URL=redis://password@192.168.0.1:6379 -e HTTP_PORT=4567 -e HTTP_AUTH=admin:admin redmon
```

## Related links

https://hub.docker.com/r/wokim/docker-redmon/
https://github.com/steelThread/redmon
