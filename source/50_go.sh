export PATH

# pyenv init
export GOENV_ROOT=$DOTFILES/vendor/goenv
PATH="$(path_remove $GOENV_ROOT/bin):$GOENV_ROOT/bin"

if [[ "$(type -P goenv)" && ! "$(type -t _goenv)" ]]; then
  eval "$(goenv init -)"
fi
