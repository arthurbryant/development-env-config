#!/bin/sh

mkdir -p ~/.initial-config
cd ~/.initial-config
if [ -e ~/.initial-config/linux-initial-config ]; then
    echo "Git clone already done."
else
    git clone git@github.com:arthurbryant/linux-initial-config.git
fi

ln -sf ~/.initial-config/linux-initial-config/.bashrc-all ~/.bashrc-all
mkdir -p ~/.bashrc-config
ln -sf ~/.initial-config/linux-initial-config/.bashrc-config/* ~/.bashrc-config/

# FIXME: check this line exist at .bashrc or not before add it.
echo "\nsource ~/.bashrc-all" >> ~/.bashrc
