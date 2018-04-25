#!/bin/sh

for f in *.txt; do
    tail -n +33 "$f" > "${f}".tmp && mv "${f}".tmp "$f".csv
    echo "Processing $f"
done
