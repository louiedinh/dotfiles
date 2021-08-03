export CLICOLOR=1
export TERM=xterm-color

# Add in my utilities
export PATH=$PATH:~/bin/

if [ -e "~/.bashlocalrc" ]
then
      source ~/.bashlocalrc
fi

## Personal Aliases
# Expand aliases
shopt -s expand_aliases

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
