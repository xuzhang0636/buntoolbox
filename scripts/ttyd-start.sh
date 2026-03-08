#!/bin/bash
# Start ttyd web terminal with sensible defaults
# Usage: ttyd-start [port] [command...]
# Examples:
#   ttyd-start                    # port 7681, zsh, fontSize=16, Maple Mono NF CN
#   ttyd-start 8080               # port 8080, zsh
#   ttyd-start 7681 bash          # port 7681, bash

PORT="${1:-7681}"
shift 2>/dev/null || true

if [ $# -eq 0 ]; then
  exec ttyd -W -p "$PORT" -t fontSize=16 -t "fontFamily=Maple Mono NF CN, monospace" zsh
else
  exec ttyd -W -p "$PORT" -t fontSize=16 -t "fontFamily=Maple Mono NF CN, monospace" "$@"
fi
