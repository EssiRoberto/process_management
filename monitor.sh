#!/bin/bash
PROCESS=$1
PID=$(pgrep "$PROCESS")
if [ -z "$PID" ]; then
  echo "$PROCESS is not running"
else
  echo "$PROCESS is running with PID $PID"
fi
