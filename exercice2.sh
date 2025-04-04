Première version sans aide

#!/bin/bash

#Script de création d'utilisateur en argument
#On vérifie la présence d'argument

if [ $# -eq 0 ];then

#On doit indiquer en argument les utilisateurs sinon, le script se ferme
echo "Il manque les noms des utilisateurs en argument - Fin du script"
  else
  exit 1 > /dev/null
fi 

#argument est valide mais on doit vérifier si le username n'existe pas déjà
if [ getent passwd $@ > dev/null ]; then
  #Si l'utilisateur existe déjà, message explicatif + sorte
    echo "L'utilisateur $@ existe déjà"

  #Pour les autres utilisateur qui n'existe pas, création
  else useradd -m $@ ]; then
    echo "L'utilisateur $@ a été crée"

#Si la création echoue, message d'échec
    elif [ $? = 1 ]
echo "Erreur à la création de $@"
    fi
fi

Deuxieme version avec les éléments du cours (vidéo et quetes)

else exit 1 inutile au début.
Une boucle for semble plus intéressante pour vérifier que chaque utilisateur n'existe pas déjà
On ne peut pas utiliser la variable $@ sur tout le script, c'est utile en début de boucle mais il vaut mieux indiquer le terme $user que le script interpretera comme "chaque argument"

#!/bin/bash

#On vérifie que les arguments sont ajoutés
  if [ $# -eq 0 ]; then
  echo "Il manque les noms des utilisateurs en argument - Fin de script"
  exit 1
  fi

#On vérifie si les arguments n'existe pas avec la boucle for
  for user in $@ do
     if [ cat /etc/passwd | grep $user ]; then
       #message d'erreur
        echo " $user existe déjà"
     else
        #création d'utilisateur
        useradd -m $user

       #On vérifie que la création est un succes
          if [ $? = 0 ]; then
            echo "L'utilisateur $@ existe déjà"

          elif [ $? != 0 ]; then
            echo "Erreur lors de la création de $user
          fi
     fi
  done

 
