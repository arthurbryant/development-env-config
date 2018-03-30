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
If you want to add your tool's config files or customize bashrc file.
## tool config file
- add your tool config file to bin/
- rerun . ./setup.sh

## customize bashrc file
- add your customize file to bashrc-config
- rerun . ./setup.sh

If you want to save your own config and use it again, please fork this repository, add your files and commit.
