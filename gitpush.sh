#!/data/data/com.termux/files/usr/bin/bash

# Vai nella cartella del progetto
cd ~/tonybarber || exit

# Aggiorna il branch locale con eventuali modifiche da GitHub
git fetch origin
git rebase origin/main

# Aggiungi tutte le modifiche locali
git add .

# Commit con messaggio fornito come parametro
if [ -z "$1" ]; then
    echo "Inserisci il messaggio del commit come parametro"
    exit 1
fi
git commit -m "$1"

# Push su GitHub
git push origin main
