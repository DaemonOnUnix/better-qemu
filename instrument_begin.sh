#!/bin/sh

if [ "$#" -ne 2 ]; then
    if [ "$#" -ne 3 ]; then
        echo "Usage: $0 <instrument> <output> [binary]"
        exit 1
    fi
fi

if [ ! -d "$1" ]; then
    exit 1
fi

for i in analysis logs dumps binaries; do
    mkdir -p "$1/$2/$i"
done

if [ "$#" -eq 3 ]; then
    cp "$3" "$1/$2/binaries"
fi