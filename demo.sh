#!/bin/bash

echo "Start time for date1=$(date)"
pushd date1
docker build -t date1 .
popd
echo "Sleeping to let time pass"
sleep 10
echo "Start time for date2=$(date)"

pushd date2
docker build -t date2 .
popd

docker run -it --rm date1 cat /date.txt
docker run -it --rm date2 cat /date.txt
