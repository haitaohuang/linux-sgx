#!/bin/bash

#watch -n 1 'find /sys/fs/cgroup -name misc.current -exec sh -c '\''echo "$1:"; cat "$1"'\'' _ {} \;'

if [ -z "$1" ]
  then
    echo "No argument supplied, please provide 'max', 'current' or 'events'"
    exit 1
fi

watch -n 1 "find /sys/fs/cgroup -wholename *sgx*/misc.$1 -exec sh -c 'echo \"\$1:\"; cat \"\$1\"' _ {} \;"

