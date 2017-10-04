#!/bin/sh

/configure.sh ${STORM_ZOOKEEPER_SERVICE_HOST:-$1} ${STORM_NIMBUS_SERVICE_HOST:-$2}

exec bin/storm supervisor
