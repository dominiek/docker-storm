#!/bin/sh

/configure.sh ${ZOOKEEPER_SERVICE_HOST:-$1} ${NIMBUS_SERVICE_HOST:-$2}

mkdir -p /opt/apache-storm/logs
touch /opt/apache-storm/ui.log
tail -f /opt/apache-storm/ui.log &


exec bin/storm ui
