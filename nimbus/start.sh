#!/bin/sh

/configure.sh ${STORM_ZOOKEEPER_SERVICE_HOST:-$1}

mkdir -p /opt/apache-storm/logs
touch /opt/apache-storm/nimbus.log
tail -f /opt/apache-storm/nimbus.log &

exec bin/storm nimbus
