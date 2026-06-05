Sprint02 Linux - Administration Système

Objectif

Automatiser la création d'utilisateurs, de groupes, de répertoires et de permissions sous Linux à l'aide d'un script Bash.

Utilisateurs

- alice → groupe admin
- bob → groupe dev
- charlie → groupe comptabilite
Groupes
- admin
- dev
- comptabilite
Répertoires
Dossier confidentiel
Chemin :
/srv/data/compta
Propriétaire groupe :
comptabilite
Permissions :
770
Dossier public
Chemin :
/srv/data/public
Propriétaire groupe :
admin
Permissions :
775
Script
Le script setup_users.sh réalise automatiquement :
- création des groupes ;
- création des utilisateurs ;
- affectation aux groupes ;
- création des répertoires ;
- configuration des permissions.
Sécurité
L'utilisation de chmod 777 est déconseillée car elle donne tous les droits à tous les utilisateurs du système. Cette pratique représente un risque de sécurité important.

Les permissions 770 et 775 permettent de mieux contrôler les accès aux données sensibles.
