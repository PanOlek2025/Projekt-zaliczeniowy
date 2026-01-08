#!/bin/bash

SEARCH_DIR="files"
echo "Szukanie duplikatów w $SEARCH_DIR..."

if [ ! -d "$SEARCH_DIR" ]; then
    echo "Katalog $SEARCH_DIR nie istnieje."
    exit 1
fi

declare -A hashes

# Szukanie duplikatów
find "$SEARCH_DIR" -type f | while read file; do
    checksum=$(md5sum "$file" | awk '{print $1}')
    
    if [[ -v hashes[$checksum] ]]; then
        echo "ZNALEZIONO DUPLIKAT:"
        echo "Duplikat: $file"
        
        # Pytanie czy usunąć (wymóg zadania)
        read -p "Czy usunąć plik? [t/N] " odpowiedz < /dev/tty
        
        if [[ "$odpowiedz" == "t" || "$odpowiedz" == "T" ]]; then
            rm "$file"
            echo "Usunięto: $file"
        else
            echo "Pominięto."
        fi
    else
        hashes[$checksum]="$file"
    fi
done