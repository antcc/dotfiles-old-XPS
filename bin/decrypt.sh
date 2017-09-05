#!/bin/bash

VISIBLE="$1"
HIDDEN="$(echo $(dirname $VISIBLE)/.$(basename $VISIBLE))"

encfs $HIDDEN $VISIBLE

