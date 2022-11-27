if [ -x "$(command -v nimble)" ]; then
  PATH="${PATH:+${PATH}:}$HOME/.nimble/bin"
fi
