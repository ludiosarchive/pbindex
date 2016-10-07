#!/bin/sh

set -e

last_prediction=$(curl -s http://predictionbook.com/ | grep -o -P '/predictions/\d+' | sort -n | tail -n 1 | cut -d '/' -f 3)
mkdir -p predictionbook
cd predictionbook
for i in $(seq 1 1 $last_prediction); do
    wget "http://predictionbook.com/predictions/$i" -O $i
done
