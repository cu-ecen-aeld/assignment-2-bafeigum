#!/bin/bash

if [ $# -ne 2 ]
then
    echo You must provide 2 arguments.
    exit 1
fi

filesdir=$1
searchstr=$2

if ! [ -d $filesdir ]
then
    echo $filesdir is not a valid path
    exit 1
fi

numfiles=$( ls $filesdir | wc -l )
matchlines=$( grep -r $searchstr $filesdir | wc -l )

echo The number of files are $numfiles and the number of matching lines are $matchlines