export CLICOLOR=1
export TERM=xterm-color
export PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH

# Add in my utilities
export PATH=$PATH:~/bin/

if [ -e "~/.bashlocalrc" ]
then
      source ~/.bashlocalrc
fi

## Work
alias cdf="cd ~/Code/flavour/"
alias cds="cd ~/Code/services/"
alias cda="cd ~/Analytics/"
alias cdr="cd ~/Code/"
alias launch_flap="launch-service flap --nosanity -b -d"

# Kubernetes
alias kc="kubectl --kubeconfig ~/.kube/config -n ldinh-dev"
function kc_shell() {
    echo "kubectl --kubeconfig ~/.kube/config -n ldinh-dev exec -it $1 -c airflow-scheduler -- bash"
    kubectl --kubeconfig ~/.kube/config -n ldinh-dev exec -it $1 -c airflow-scheduler -- bash
}

# Initialize pyenv
export PATH="/Users/ldinh/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

## Personal Aliases
# Expand aliases
shopt -s expand_aliases
# https://stackoverflow.com/questions/4060880/passing-argument-to-alias-in-bash
# alias testing='function __test_args() { echo "Hey $*"; unset -f __test_args; }; __test_args'
# rgrep t-test *.Rmd . => grep -r --include=*.Rmd t-test .
# 
alias rgrep='function __rgrep() { grep -r --include=$2 $1 $3; unset -f __rgrep; }; __rgrep'
export FLAIRFLOW_PROJECT=/Users/ldinh/Code/py-services/apps/flairflow
alias flairflow="/Users/ldinh/.pyenv/versions/.flairflow-cli/bin/flairflow"
export FLAIRFLOW_PROJECT=/Users/ldinh/Code/py-services/apps/flairflow
alias flairflow="/Users/ldinh/.pyenv/versions/.flairflow-cli/bin/flairflow"
export FLAIRFLOW_PROJECT=/Users/ldinh/Code/py-services/apps/flairflow
alias flairflow="/Users/ldinh/.pyenv/versions/.flairflow-cli/bin/flairflow"
