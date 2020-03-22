#!/bin/sh
set -x 

ARGS=""

if [[ ! -z $LASTSAVE ]]; then
  LASTSAVE=$(ls -1rt /openttd/save/autosave | tail -n1 2>/dev/null)
  ARGS="${ARGS} -g /openttd/save/autosave/${LASTSAVE}"
fi

if [[ ! -z $CONFIG_FILE ]]; then
  cp $CONFIG_FILE /openttd/openttd.cfg
fi

cd /openttd

openttd -D -c openttd.cfg ${ARGS}