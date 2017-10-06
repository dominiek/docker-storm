# Apache Storm images for Docker

Based on [Matthew Farrellee's Docker Images](github.com/mattf/docker-storm)

Current Storm Version: `1.1.1`

## Pull Images

```
docker pull dominiek/storm-nimbus
docker pull dominiek/storm-worker
docker pull dominiek/storm-ui
```

## Build Images

```
make
```

## Container Configuration

The following environment variables are available currently:

- `STORM_ZOOKEEPER_SERVICE_HOST` (Required for all services)
- `STORM_NIMBUS_SERVICE_HOST` (Required for `storm-worker` and `storm-ui`)

In Kubernetes these environment variables are available automatically when a `storm-zookeeper` and `storm-nimbus` service are created.
