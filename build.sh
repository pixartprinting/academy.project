#!/bin/bash

set GOARCH=arm64
set GOOS=linux

echo "Building"
for folder in "one" "two" "three" "four"; do
    cd $folder
    rm -r handler
    go build -trimpath -o lambda_handler
    if [ $? -ne 0 ]; then
        echo "BUILD FAILED for " $folder
        exit 1
    fi
    cd ..
done
