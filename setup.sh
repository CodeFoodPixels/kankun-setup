#!/bin/sh

sed -ie '/^sh \/setup.sh/d' /etc/rc.local
rm /setup.sh

if [[ -e /setup/install.sh ]]; then
    cd /setup
    chmod +x install.sh
    sh install.sh
fi

reboot
