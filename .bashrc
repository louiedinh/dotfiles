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
