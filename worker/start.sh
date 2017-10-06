#!/bin/sh

/configure.sh ${STORM_ZOOKEEPER_SERVICE_HOST:-$1} ${STORM_NIMBUS_SERVICE_HOST:-$2}

if [ -n "$STORM_LOCAL_HOSTNAME" ]; then
cat >> conf/storm.yaml <<EOF

storm.local.hostname: "$STORM_LOCAL_HOSTNAME"

EOF
fi

exec bin/storm supervisor
