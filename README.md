# Projekt Zaliczeniowy - Linux i Git

## Cel Repozytorium
Repozytorium to stanowi cyfrowe portfolio zadań wykonanych w ramach laboratoriów z systemów Linux. Głównym celem projektu jest demonstracja umiejętności w zakresie:
- Automatyzacji zadań za pomocą skryptów Bash.
- Tworzenia profesjonalnej dokumentacji w systemie LaTeX.
- Zarządzania wersjami projektu przy użyciu systemu Git (praca z gałęziami `main` i `develop`).

## Zawartość Repozytorium

### 1. Katalog `bash/`
Znajdują się tu skrypty automatyzujące operacje na plikach:
- **`classification/`**: Skrypt sortujący pliki do odpowiednich folderów.
- **`duplicates/`**: Skrypt wykrywający duplikaty plików na podstawie sum kontrolnych MD5 (z opcją interaktywnego usuwania).

### 2. Katalog `latex/`
Zawiera źródła oraz skompilowane dokumenty PDF:
- **`script/`**: Skrypt pomocniczy dla studentów (składający się z pliku głównego i części).
- **`instruction/`**: Instrukcja techniczna wraz ze zrzutami ekranu.

## Instrukcja Użycia
Aby skorzystać z projektu:
1. Sklonuj repozytorium: `git clone https://github.com/PanOlek2025/Projekt-zaliczeniowy.git`
2. Uruchomienie skryptów Bash wymaga nadania uprawnień: `chmod +x bash/**/*.sh`
3. Dokumentację LaTeX można skompilować poleceniem `pdflatex main.tex` w odpowiednim katalogu lub otworzyć gotowe pliki PDF.
