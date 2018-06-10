sudo rm    /etc/systemd/system/restart-nm.service
sudo touch /etc/systemd/system/restart-nm.service
echo "
[Unit]
Description=Restarts NetworkManager after suspend to make wifi work again... Ugh
After=suspend.target

[Service]
User=root
Type=oneshot
ExecStart=$HOME/src/scripts/restart-nm.sh
TimeoutSec=0
StandardOutput=syslog

[Install]
WantedBy=suspend.target
" | sudo tee -a /etc/systemd/system/restart-nm.service

sudo systemctl enable restart-nm
