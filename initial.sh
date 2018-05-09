#!/bin/sh

base_path=~/.initial-config/development-env-config

mkdir -p ~/.initial-config
cd ~/.initial-config
if [ -e $base_path ]; then
    echo "Repository already exists!"
    cd $base_path
    git checkout master && git pull
else
    git clone git@github.com:arthurbryant/development-env-config.git
fi

# fetch private config files from bitbucket
cd /tmp

if [ -z $BITBUCKET_CONFIG_REPOSITORY ]; then
    echo 'Skip config private config files from bitbucket.'
else
    git clone $BITBUCKET_CONFIG_REPOSITORY
    cd "$(\ls -1dt ./*/ | head -n 1)"
    \cp -rf * "${base_path}/.bashrc-config/"
fi

rm -rf ~/.bashrc-all && ln -sf ${base_path}/bashrc-all ~/.bashrc-all
rm -rf ~/.bashrc-config && mkdir -p ~/.bashrc-config
ln -sf ${base_path}/bashrc-config/* ~/.bashrc-config/

if grep -Fxq "source ~/.bashrc-all" ~/.bashrc; then
    echo "'source ~/.bashrc-all' already exists at ~/.bashrc!"
else
    printf "\nsource ~/.bashrc-all\n" >> ~/.bashrc
fi

result="$(grep -F CUSTOM_TOOL_PATH ~/.bashrc)"
if [ -z "${result}" ]; then
    printf "\nCUSTOM_TOOL_PATH=${base_path}/tools\n" >> ~/.bashrc
    printf 'export PATH="$CUSTOM_TOOL_PATH:$PATH"' >> ~/.bashrc
    printf "\n" >> ~/.bashrc
fi
