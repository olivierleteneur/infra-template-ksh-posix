#!/usr/bin/env ksh
set -e
set -u

SCRIPT_NAME=${0##*/}

usage() {
    print -u2 "Usage: ${SCRIPT_NAME} <paramètre>"
    exit 1
}

main() {
    if [ $# -eq 0 ]; then
        usage
    fi
    readonly PARAM="$1"
    
    print "Exécution KSH avec le paramètre : ${PARAM}"
}

main "$@"
