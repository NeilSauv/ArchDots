#!/bin/bash

workspace_requested=$1
if [ -z "$workspace_requested" ]; then
    echo "Veuillez spécifier un numéro de workspace."
    exit 1
fi

# Obtention de la position du curseur
cursor_pos=$(hyprctl cursorpos)
cursor_x=$(echo $cursor_pos | cut -d',' -f1)
cursor_y=$(echo $cursor_pos | cut -d',' -f2)

# Récupération des informations sur les moniteurs
screens_info=$(hyprctl monitors)

# Détermination de l'écran actif en fonction de la position du curseur
active_output=""
output_order=1

while read -r line; do
    if [[ $line == Monitor* ]]; then
        current_monitor=$(echo $line | awk '{print $2}')
    elif [[ $line == *"@"* && $line == *"at"* ]]; then
        # Extraction des positions et dimensions de l'écran
        dimensions=$(echo $line | awk '{print $1}' | cut -d'@' -f1)
        position=$(echo $line | awk '{print $3}')
        width=$(echo $dimensions | cut -dx -f1)
        height=$(echo $dimensions | cut -dx -f2)
        pos_x=$(echo $position | cut -dx -f1)
        pos_y=$(echo $position | cut -dx -f2)

        # Vérification si le curseur est sur cet écran
        if (( cursor_x >= pos_x && cursor_x < pos_x + width && cursor_y >= pos_y && cursor_y < pos_y + height )); then
            active_output=$current_monitor
            break
        fi

        output_order=$((output_order + 1))
    fi
done <<< "$screens_info"

if [ -z "$active_output" ]; then
    echo "Impossible de déterminer l'écran actif."
    exit 1
fi

# Calcul de la base pour le workspace (10 workspaces par écran, décalage par écran)
base=$((output_order - 1))
target_workspace=$((base * 10 + workspace_requested))

# Crée et sélectionne le workspace s'il n'existe pas
hyprctl dispatch workspace $target_workspace
echo "Exécution : hyprctl dispatch workspace $target_workspace"

# Commande pour changer de workspace
hyprctl dispatch workspace $target_workspace

