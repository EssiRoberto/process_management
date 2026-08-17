#!/bin/bash
PID_FILE="/tmp/my_process.pid"
if [ -f "$PID_FILE" ]; then
  PID=$(cat "$PID_FILE")
  kill -15 "$PID"
  rm "$PID_FILE"
  echo "Process $PID stopped"
else
  echo "No PID file found"
fi
