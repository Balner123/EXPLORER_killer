#!/bin/bash

# Zadej počet opakování
echo -n "Zadejte pocet rekurzi: "
read pocet

# Kontrola, zda je zadán platný počet
if ! [[ "$pocet" =~ ^[0-9]+$ ]]; then
    echo "Prosim zadejte platne cislo."
    exit 1
fi

# Inicializace názvu první složky
slozka="A"

# Smyčka pro vytvoření požadované struktury
for ((i=1; i<=pocet; i++)); do
    mkdir -p "$slozka"    # Vytvoření složky
    cd "$slozka"          # Přepnutí do nově vytvořené složky
    echo "Vytvořena a přepnuto do: $(pwd)" # Zobrazení aktuální složky
    slozka="A"            # Nastavení názvu pro další iteraci
done
