#!/bin/sh

usage() {
    echo "Usage: get-failed-links LINKS_FILE"

    exit 1
}

[ $# -ne 1 ] && usage

/sul/getline 2 "$1"
