#!/bin/bash
# Regenerates the clean-URL pages from index.html.
# Edit ONLY index.html, then run:  ./build.sh
set -e
cd "$(dirname "$0")"

SECTIONS="home about services capabilities method contact"

for s in $SECTIONS; do
  mkdir -p "$s"
  cp index.html "$s/index.html"
done

# keep the legacy /portfolio.html copy in sync too
cp index.html portfolio.html

echo "Generated clean-URL pages: / (root) + $SECTIONS  (+ portfolio.html)"
