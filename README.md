# Introduction
development-env-config is used for setting up your basic development enviornment on MacOS/Linux.

It will automatically set up the following for you.
- git alias
- vim config

Tested on macOS 10.13.3 and Amazon linux

# Install
* create new folder: `~/.your-name;`
* `cd ~/.your-name && git clone git@github.com:arthurbryant/development-env-config.git`
* `cd development-env-config.git && . ./setup.sh`

# TODO: FIX explaination here
That's it! Vim and your bash alias are setup for use.

# Customize
If you want to add your own config file and want it be sourced automatically.

- Add your own customize file to .bashrc-config/
- run: . ~/.bashrc

If you want to save your own config, please fork this repository,  add config file to .bashrc-config/ and commit.
