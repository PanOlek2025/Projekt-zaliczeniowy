#!/bin/bash

INBOX="inbox"
TARGET_DIR=${2:-"classified"}

if [ ! -d "$INBOX" ]; then
    echo "Brak katalogu $INBOX"
    exit 1
fi

mkdir -p "$TARGET_DIR"

for file in "$INBOX"/*; do
    if [ -f "$file" ]; then
        ext="${file##*.}"
        mkdir -p "$TARGET_DIR/$ext"
        mv "$file" "$TARGET_DIR/$ext/"
        echo "Przeniesiono: $file"
    fi
done
