#!/bin/bash
# Dit script installeert salt-minion op de target machine en stelt de salt-master in.
# Daarnaast voegt het de salt-minion key toe aan de salt-master
# Dit script dient met root rechten uitgevoerd te worden
SALT_MASTER=10.0.0.30

#Update systeem
sudo apt-get update
sudo apt-get upgrade

#Download Salt Minion
curl -L http://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh

sed -i "s/^#master:.*/master: "$SALT_MASTER"/" /etc/salt/minion
systemctl restart salt-minion

echo 'Einde script'
