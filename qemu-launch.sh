#!/bin/sh

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <QEMU_PATH> <OUTPUT_FILE> <CMD>"
    exit 1
fi

QEMU="$1"
PARAMS="$2"
OUTPUT="$3"
CMD="$4"

"$QEMU" -D "$OUTPUT" -d in_asm,cpu,nochain,exec"$PARAMS" -singlestep "$CMD"
