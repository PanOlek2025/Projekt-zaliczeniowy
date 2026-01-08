#!/bin/bash

INBOX="inbox"
# Ustawienie katalogu docelowego (domyślnie "classified")
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
        # Przenoszenie pliku (mv) - wymóg zadania
        mv "$file" "$TARGET_DIR/$ext/"
        echo "Przeniesiono: $file"
    fi
done