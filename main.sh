#!/usr/bin/env bash

#==============================================================================================================
#
# Auteur  : Alexandre Maury 
# Version 1.2
# License : GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007
# Faire une modification du clonage dans /temp/
#==============================================================================================================

read -p "[*] Veuillez entrer votre nom d'utilisateur : " utilisateur


# Accorde les droits administrateur a l'utilisateur ci celui-ci le souhaite
read -p "[*] Accorder les privilèges sudo au compte ${utilisateur} ==> y/N " reponse
if [ "$reponse" == "y" ]; then
    usermod -aG sudo $utilisateur
    printf "%s \\n" "[Succès] Votre compte ${utilisateur} est à présent membre du groupe sudo"
fi
