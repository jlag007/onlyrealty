#!/usr/bin/env bash
set -e

# preview.sh — try npx serve, then python, then docker
if command -v npx >/dev/null 2>&1; then
  echo "Starting preview with npx serve on http://localhost:3000"
  npx serve -s . -l 3000
elif command -v python3 >/dev/null 2>&1; then
  echo "npx not found; starting Python HTTP server on http://localhost:3000"
  python3 -m http.server 3000
elif command -v docker >/dev/null 2>&1; then
  echo "Using Docker to serve on http://localhost:8080"
  docker run --rm -p 8080:80 -v "$(pwd)":/usr/share/nginx/html:ro nginx:stable-alpine
else
  echo "No suitable server found. Install Node (npx), Python3, or Docker."
  exit 1
fi
