#!/bin/sh

mkdir -p ~/.initial-config
cd ~/.initial-config
if [ -e ~/.initial-config/development-env-config ]; then
    echo "Repository already exists!"
    cd ~/.initial-config/development-env-config
    git checkout master && git pull
else
    git clone git@github.com:arthurbryant/development-env-config.git
fi

rm -rf ~/.bashrc-all && ln -sf ~/.initial-config/development-env-config/.bashrc-all ~/.bashrc-all
rm -rf ~/.bashrc-config && mkdir -p ~/.bashrc-config
ln -sf ~/.initial-config/development-env-config/.bashrc-config/* ~/.bashrc-config/

if grep -Fxq "source ~/.bashrc-all" ~/.bashrc
then
    echo "'source ~/.bashrc-all' already exists at ~/.bashrc!"
else
    echo "\nsource ~/.bashrc-all" >> ~/.bashrc
fi
