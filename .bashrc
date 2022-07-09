# Versioned controlled .bashrc

# CLICOLOR is used by FreeBSD and MacOS
export CLICOLOR=1
export TERM=xterm-color

# gnu ls coloring requires alias
alias ls="ls --color=auto"

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

## Work bashrc
if [ -f ~/.bash_aliases ]; then
    . ~/.bashrc_abcellera
fi

# Make sure to install obliquestrategies
# pip install obliquestrategies
echo; obliquestrategies

# Add doom executables
export PATH=$PATH:~/.emacs.d/bin
