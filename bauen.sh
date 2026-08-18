#!/usr/bin/env bash
# Baut source.css zu einer Theme-Datei fuer Vencord/Vesktop und
# legt sie in den Themes-Ordner. Fuer Testen ohne Umweg ueber GitHub.
set -eu
QUELL="$(dirname "$(readlink -f "$0")")"
ZIEL="$HOME/.config/vesktop/themes/WinClassic-lokal.theme.css"
{
    printf '/**\n * @name WinClassic-lokal\n * @author SlippingGitty, Fork LoweloDev\n'
    printf ' * @description Arbeitsstand aus %s\n */\n\n' "$QUELL"
    cat "$QUELL/src/source.css"
} > "$ZIEL"
echo "gebaut: $ZIEL ($(wc -l < "$ZIEL") zeilen)"
