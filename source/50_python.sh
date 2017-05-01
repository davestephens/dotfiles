export PATH

# pyenv init
PATH="$(path_remove $DOTFILES/vendor/pyenv/bin):$DOTFILES/vendor/pyenv/bin"

if [[ "$(type -P pyenv)" && ! "$(type -t _pyenv)" ]]; then
  eval "$(pyenv init -)"
fi
