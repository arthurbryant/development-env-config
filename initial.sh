#!/bin/sh

base_path=~/.initial-config/development-env-config
repository_name=`basename ${base_path}`

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
    if [[ $BITBUCKET_CONFIG_REPOSITORY =~ ^git@bitbucket.org:(.*)\/(.*).git$ ]]; then
        repository_name=${BASH_REMATCH[2]}
        rm -rf $repository_name
        git clone $BITBUCKET_CONFIG_REPOSITORY
        cd "$(\ls -1dt ./*/ | head -n 1)"
        \cp -rf * "${base_path}/bashrc-config/"
    else
        echo 'Error: copy bashrc from bitbucket!'
        exit -1
    fi
fi

rm -rf ~/.bashrc-all && ln -sf ${base_path}/.bashrc-all ~/.bashrc-all
rm -rf ~/.bashrc-config && mkdir -p ~/.bashrc-config
ln -sf ${base_path}/bashrc-config/* ~/.bashrc-config/

if grep -Fxq "source ~/.bashrc-all" ~/.bashrc; then
    echo "'source ~/.bashrc-all' already exists at ~/.bashrc!"
else
    printf "\nsource ~/.bashrc-all\n" >> ~/.bashrc
fi

result="$(grep -F ${repository_name} ~/.bashrc)"
if [ -z "${result}" ]; then
    printf "\nexport PATH=\${PATH}:\$(find ${base_path}/tools -type d | tr '\\\n' ':' | sed 's/:$//')\n" >> ~/.bashrc
    printf "export PATH=${PATH}:find ${base_path}/tools -type d | tr '\n' ':' | sed 's/:$//'" >> ~/.bashrc
    printf "\n" >> ~/.bashrc
fi
