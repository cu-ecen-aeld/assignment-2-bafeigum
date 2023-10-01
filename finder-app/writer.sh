#!/bin/bash

if [ $# -ne 2 ]
then
    echo You must provide 2 arguments.
    exit 1
fi

writefile=$1
writestr=$2

writefolder=$(dirname $writefile)

mkdir -p $writefolder

echo $writestr > $writefile