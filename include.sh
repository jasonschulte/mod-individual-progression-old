#!/usr/bin/env bash

## GETS THE CURRENT MODULE ROOT DIRECTORY
MOD_IPP_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

source $MOD_IPP_ROOT"/conf/conf.sh.dist"

if [ -f $MOD_IPP_ROOT"/conf/conf.sh" ]; then
    source $MOD_IPP_ROOT"/conf/conf.sh"
fi
