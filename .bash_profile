# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# run at start time
/home/bkapps/git/perl/advanced_perl/auto.sh > /home/bkapps/git/perl/advanced_perl/model.pl
