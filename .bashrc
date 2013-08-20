# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
#ROR: Can't create '/usr/local/perl-5.14.1/man/man3

# User specific aliases and functions
alias dfsls='hadoop dfs -ls'
alias dfsrm='hadoop dfs -rm'       # rm
alias dfscat='hadoop dfs -cat'     # cat
alias dfsrmr='hadoop dfs -rmr'     # rm -r
alias dfsmkdir='hadoop dfs -mkdir' # mkdir
alias dfsput='hadoop dfs -put'     # HDFS
alias dfsget='hadoop dfs -get'     # HDFS

export JAVA_HOME=/usr/java/jdk1.6.0_33
export PATH=$JAVA_HOME/bin:$PATH

export PIG_CLASSPATH=$HADOOP_HOME/conf

export PERL_LOCAL_LIB_ROOT="/home/bkapps/perl5";
export PERL_MB_OPT="--install_base /home/bkapps/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/bkapps/perl5";
export PERL5LIB="/home/bkapps/lib:/home/bkapps/perl5/lib/perl5/x86_64-linux-thread-multi:/home/bkapps/perl5/lib/perl5";
export PATH="/home/bkapps/perl5/bin:$PATH";

alias dfsls='hadoop dfs -ls'
alias dfsrm='hadoop dfs -rm'       # rm
alias dfscat='hadoop dfs -cat'     # cat
alias dfsrmr='hadoop dfs -rmr'     # rm -r
alias dfsmkdir='hadoop dfs -mkdir' # mkdir
alias dfsput='hadoop dfs -put'     # HDFS
alias dfsget='hadoop dfs -get'     # HDFS

export LANG=en_US.UTF-8

export MIXI_ROOT=/home/bkapps/git/pages_practice_2013
export PATH=/home/bkapps/software/bin:/home/bkapps/install/activepython/bin:$PATH
export PATH=~/node_modules/.bin:$PATH

source ~/.bashrc-git
source ~/.perlrc
