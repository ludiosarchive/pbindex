#!/bin/sh

set -e

last_prediction=$(curl -s https://predictionbook.com/happenstance/ | grep -o -P '/predictions/\d+' | sort -n | tail -n 1 | cut -d '/' -f 3)

mkdir -p predictionbook
cd predictionbook
rm -f .urls
for i in $(seq $last_prediction); do
	echo "https://predictionbook.com/predictions/$i" >> .urls
done

# Ignore redirects from private predictions to homepage
wget --max-redirect 0 -i .urls
