export PATH

# pyenv init
export PYENV_ROOT=$DOTFILES/vendor/pyenv
PATH="$(path_remove $PYENV_ROOT/bin):$PYENV_ROOT/bin"

if [[ "$(type -P pyenv)" && ! "$(type -t _pyenv)" ]]; then
  eval "$(pyenv init -)"
fi
