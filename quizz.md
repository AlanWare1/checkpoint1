###**Répond aux questions suivantes:**

#### 1) Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux

#### 2) Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
sudo chmod 744 myfile

#### 3) Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?
Il faut ajoute l'extension .pdf au dossier gitignore. Ce dossier se base sur des extensions ou mots clefs pour protéger l'envoi de document lors du push.

#### 4) Quelles commandes git utiliser pour fusionner les branches main et test_valide ?
Pour fusionner les branches, tu peux faire un "git.merge main test_valide" (tu dois choisir les branches à fusionner) ou un "git.pull" (cette commande te permet de ne pas choisir les branches)

#### 5) Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :
- "Bonjour est-ce que ce clavier fonctionne bien ?"
- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
- "Même des tildes ~ ?"
- "Evidemment !"
Si tu souhaites afficher un texte présent dans un fichier dans la ligne de commande, le mieux est de faire "cat nom_fichier"

#### 6) La commande jobs -l donne le résultat ci-dessous :
*wilder@Ubuntu:~$ jobs -l
[1]  37970 En cours d'exécution   gedit &
[2]  37971 En cours d'exécution   xeyes &
[3]- 37972 En cours d'exécution   sleep*
__Quelle commande te permet de mettre en avant le processus gedit ?__

Tu peux le voir dans la liste des processus avec la commande "top". Cependant, si tu veux l'isoler, ps aux (affichage de tout les processus) | grep (récupération de mot clef) "gedit"

#### 7) Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
La couche2 et 3 du modele osi corresponde à la liaison de données et au réseau. On peut retrouver sur la couche 2 les switchs ou carte réseau qui adressent localement une IP et gère la communication locale entre les adresses.
A l'echelle du réseau, on retrouve par exemple routeur qui oeuvre pour que la communication inter-réseau se déroule bien.

#### 8) Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
|BASH|POWERSHELL|
|---|---|
|cd| set-location|
|mkdir|newitem -itemtype directory|
|cp| copy-item "source "destination"|
|ls| get child-item|

#### 9). Dans la trame ethernet, qu'est-ce que le payload ?
Le payload est la charge de données transportée par la trame

#### 10. Pourquoi les classes IP sont remplacées par le CIDR ?
Les classes IP sont remplacées par le CIDR car elles deviennent obsolettes par le nombre d'adresse ip restante sur le marché. Le CIDR permet d'augmenter le nombre d'adresse disponible en faisant des sous réseau.
