# initialise pyenv
source $DOTFILES/source/50_go.sh

# install python here
if [[ "$(type -P goenv)" ]]; then
  versions=(1.8.3)

  gos=($(setdiff "${versions[*]}" "$(goenv whence go)"))
  if (( ${#gos[@]} > 0 )); then
    e_header "Installing Go versions: ${gos[*]}"
    for r in "${gos[@]}"; do
      goenv install "$r"
      [[ "$r" == "${versions[0]}" ]] && goenv global "$r"
    done
  fi
fi