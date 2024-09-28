#!/bin/bash

#-------------------------------------------------------------------------
# Script : lab2_script2.sh
# Auteur : Anthony Beauchemin
# Description : Menu pour un administrateur réseau sur Linux
# Paramètres : $1 -> Nom du fichier
# Date : 2024-02-08
#-------------------------------------------------------------------------

echo "==========================="
echo "My Super admin Menu v0.1" # Affichage du titre de mon menu de statistique
echo "==========================="

while true; do
fichier=0
PS3=$'\nFaites un choix: ' # Variable d'environnement pour sélectionner le menu
options=("Infos générales sur le serveur" "Gestion d'utilisateurs" "Gestion du réseau" "Gestion de fichiers" "Gestion de disques et de partitions" "Ajouter au minimum un aspect de votre choix" "Quitter") # Tableau d'option dans le menu
select menu in "${options[@]}" # Affiche le menu avec les options disponibles
do # Début de la boucle while
    case $menu in
        "Infos générales sur le serveur") 
            echo "Votre choix : 1"
            
            echo "Veuillez entrer le nom du fichier"
            
            read fichier # lecture du fichier nombres.txt
            
             	# Vérification si le fichier existe
		if ! [ -e "$fichier" ]; then  # Si le fichier est différent que celui d'animaux.txt
  			echo "fichier $fichier pas trouvé!" >&2
  			break
  		# Vérifier si le fichier est vide	
		elif ! [ -s "$fichier" ]; then
			echo "Le fichier est vide"
			break # Répéter le menu en cas d'erreur
		
		# Vérifier ligne par ligne si le fichier ne contient pas de nombre
		else 
			for ligne in $(cat $fichier);
			do
				if [[ ! $ligne =~ [[:digit:]] ]]; then
					echo "Des lignes du fichier ne contiennent pas de nombres"
					break # Répéter le menu en cas d'erreur
				fi	
			done
			echo "Le fichier de travail est : $fichier"	
		fi
		
          ;;
        "Gestion d'utilisateurs")
            echo "Votre choix : 2"
            ;;
        "Gestion du réseau")
            echo "Votre choix : 3"
            ;;
        "Gestion de fichiers")
            echo "Votre choix : 4"
            ;;
        "Gestion de disques et de partitions")
            echo "Votre choix : 5"
            ;;
         "Ajouter au minimum un aspect de votre choix")
            echo "Votre choix : 6"
            ;;
	    "Voir la modification 1")
            echo "Votre choix : 7"
	    ;;
     	"Voir la modification 2")
            echo "Votre choix : 8"
	    ;;
     	"Voir la modification 3")
            echo "Votre choix : 9"
            echo "Vous avez maintenant de la chance pour les 24h prochaines heures."
            echo "C'est le temps d'aller prendre un billet de loto!"
	    ;;
        "Quitter")
            echo "Au revoir!"
            exit # Sortir du script
            ;;
        *) echo "Choix invalide! $REPLY"; break;; # Répéter le menu en cas d'erreur
      esac #Fin du menu
   done
done # Fin de la boucle
