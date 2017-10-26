#!/bin/sh

last_prediction=$(curl -sL https://predictionbook.com/ | grep -o -P '/predictions/\d+' | sort -n | tail -n 1 | cut -d '/' -f 3)
mkdir -p predictionbook
cd predictionbook
for i in $(seq 1 $last_prediction); do
    wget "https://predictionbook.com/predictions/$i" -O $i
done
