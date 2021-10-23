#!/bin/bash

# Input pour la recherche sur Google

# Enregistrement de la page de résultat

file='intel.html'

awk -v RS='href="http[^"]+.pdf"' -F'"' 'RT{$0=RT; print $2}' $file >> links.txt && curl -i links.txt