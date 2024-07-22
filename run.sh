#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 command id"
  exit 1
fi

COMMAND="$1"
ID="$2"

ansible-playbook ${COMMAND} --limit="${ID}"
