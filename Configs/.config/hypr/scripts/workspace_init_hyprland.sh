#!/bin/bash

# Liste des sorties connectées à partir de hyprctl
screens=$(hyprctl monitors | grep "^Monitor" | awk '{print $2}')
workspace_number=1

for screen in $screens
do
    # Crée un workspace et le sélectionne avant de le déplacer
    hyprctl dispatch workspace $workspace_number
    echo "Exécution : hyprctl dispatch workspace $workspace_number"

    # Déplace le workspace vers le moniteur
    hyprctl dispatch moveworkspacetomonitor $workspace_number $screen
    echo "Exécution : hyprctl dispatch moveworkspacetomonitor $workspace_number $screen"
    
    # Augmentation du numéro de workspace de 10 pour le prochain moniteur
    workspace_number=$((workspace_number + 10))
done

