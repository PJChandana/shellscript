#!/bin/bash

SOURCE_DIR=/tmp/shell-script-logs

R="/e[31m"
G="/e[32m"
Y="/e[33m"
N="e/0m"

if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R Source directory : $SOURCE_DIR does not exists. $N"
fi

IFS=$FILES_TO_DELETE=$(find . -type f -mtime +14 -name "*log")

while IFS= read -r line
do
    echo "Deleting fil: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE