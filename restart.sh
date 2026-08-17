#!/bin/bash
PID_FILE="/tmp/my_process.pid"
if [ -f "$PID_FILE" ]; then
  PID=$(cat "$PID_FILE")
  kill -15 "$PID"
  rm "$PID_FILE"
fi
sleep 60 &
NEW_PID=$!
echo "$NEW_PID" > "$PID_FILE"
echo "Process restarted with PID $NEW_PID"
