#!/bin/bash
# Regenerates the clean-URL pages from index.html.
# Edit ONLY index.html, then run:  ./build.sh
set -e
cd "$(dirname "$0")"

SECTIONS="home about services expertise process contact"
STALE="capabilities method"

# remove folders from older designs that are no longer sections
for s in $STALE; do
  rm -rf "$s"
done

for s in $SECTIONS; do
  mkdir -p "$s"
  cp index.html "$s/index.html"
done

# keep the legacy /portfolio.html copy in sync too
cp index.html portfolio.html

echo "Generated clean-URL pages: / (root) + $SECTIONS  (+ portfolio.html)"
