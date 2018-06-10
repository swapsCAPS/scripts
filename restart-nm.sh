#!/bin/sh
if [ "${1}" == "post" ]; then
  echo "Restarting NetworkManager"
  sudo systemctl restart NetworkManager.service
fi
