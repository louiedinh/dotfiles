export CLICOLOR=1
export TERM=xterm-color
export PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH

# Add in my utilities
export PATH=$PATH:~/bin/

if [ -e "~/.bashlocalrc" ]
then
      source ~/.bashlocalrc
fi

## Work stuff
alias cdf="cd ~/Code/flavour/"
alias cds="cd ~/Code/services/"
alias cda="cd ~/Analytics/"
alias cdr="cd ~/Code/"

## Aliases with parameters
# https://stackoverflow.com/questions/4060880/passing-argument-to-alias-in-bash
# alias testing='function __test_args() { echo "Hey $*"; unset -f __test_args; }; __test_args'
# grep -r --include=*.Rmd t-test . => rgrep *.Rmd t-test .
alias rgrep='function __rgrep() { grep -r --include=$1 $2 $3; unset -f __rgrep; }; __rgrep'
