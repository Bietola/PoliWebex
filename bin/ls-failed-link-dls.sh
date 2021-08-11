#!/bin/sh

usage() {
    echo "Usage: ls-failed-link-dls [--raw]"

    exit 1
}

[ $# -ne 0 ] && usage

# Parse flags
RAW=false
while [ -n "$(printf "%s\n" $1 | grep '^-')" -a ! "$1" == '--' ]; do case $1 in
    --raw )
        shift
        RAW=true
        ;;
    *)
        printf "Unknown flag: $1\n"
        exit 1
esac; done
if [ "$1" == '--' ]; then shift; fi

[ ! -f err ] && {
    echo '`err` file not found in current dir'
    exit 1
}

RES="$(cat err | rg 'not been' -A 1)"

if $RAW; then
    echo "$RES"
else
    echo "$RES" | rg http
fi
