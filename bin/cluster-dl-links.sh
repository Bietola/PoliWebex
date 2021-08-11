#!/bin/sh

usage() {
    echo "Usage: cluster-dl-links LINKS_FILE"

    exit 1
}

[ $# -ne 1 ] && usage

LINKS_FILE="$1"

for link in $(cat "$LINKS_FILE"); do
    pass show polimi | head -1 | node poliwebex.js -k -v "$link"
done | tee err
