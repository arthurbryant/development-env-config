# Problem
As a developer when you change computers or when you ssh login to a remote server you will feel pain that the alias, scripts and software that you are familiar on your computer are not available anymore. Development-env-config is trying to solve this problem, make sure you can always get your development env setup in few seconds.

**development-env-config is used for setting up your development enviornment at whereever you want in few seconds. (Now only MacOS/Linux are supported).**

Just put whatever you want to use at the right placde, development-env-config will set everything for you.

# Install
1. If you put your private bashrc file at bitbucket, you can setup the following, otherwise skip.

```
export BITBUCKET_CONFIG_REPOSITORY=YOUR_BITBUCKET_REPOSITORY
```

2. execute the setup script

```
mkdir -p ~/.initial-config && cd ~/.initial-config
git clone git@github.com:arthurbryant/development-env-config.git
cd development-env-config && . ./setup.sh
```

That's it! Your familiar development enviornment will set up for you.

# Customize
If you want to add your own tools, scripts, bashrc, here is how.

### bashrc
Add your own bashrc file

- add your file to bashrc-config/
- rerun . ./setup.sh

Add your bashrc file from bitbucket private repository

```
export BITBUCKET_CONFIG_REPOSITORY=YOUR_BITBUCKET_REPOSITORY
```

This will automatically copy all the files under your bitbucket private repository to ~/.bashrc-config and work all your config will work right away.

Note: please make sure you have access to your bitbucket repository before set BITBUCKET_CONFIG_REPOSITORY variable.

### tools
Install the tools you want to install

- add your install scripts and config file to tools/
- rerun . ./setup.sh

### scripts
- add your script files to scripts/
- rerun . ./setup.sh
