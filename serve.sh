#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
PORT=22222
URL="http://localhost:$PORT/volleyball-positions-babylon.html"
echo "Serving volleyball trainer on $URL"
echo "Press Ctrl+C to stop."
echo
if command -v open >/dev/null 2>&1; then
  (sleep 1 && open "$URL") &
elif command -v xdg-open >/dev/null 2>&1; then
  (sleep 1 && xdg-open "$URL") &
fi
exec python3 -m http.server "$PORT"
