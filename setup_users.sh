#!/bin/bash

# Création des groupes
groupadd admin
groupadd dev
groupadd comptabilite

# Création des utilisateurs
useradd -m -s /bin/bash alice
useradd -m -s /bin/bash bob
useradd -m -s /bin/bash charlie

# Ajout aux groupes
usermod -aG admin alice
usermod -aG dev bob
usermod -aG comptabilite charlie

# Création des dossiers
mkdir -p /srv/data/compta
mkdir -p /srv/data/public

# Permissions
chgrp comptabilite /srv/data/compta
chmod 770 /srv/data/compta

chgrp admin /srv/data/public
chmod 775 /srv/data/public

echo "Configuration terminée"
