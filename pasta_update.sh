#!/usr/bin/env bash
echo "[Pasta Update] Votre système va être mis à jour."
wa=`whoami`
if [ $wa != "root" ]; then
  echo "Veuillez lancer ce script avec la commande sudo."
  exit
fi
apt-get update
apt-get -y dist-upgrade
apt-get clean
apt-get autoremove --purge
exit 0
