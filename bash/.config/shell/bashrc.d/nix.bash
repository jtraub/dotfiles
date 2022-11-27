if [ -x "$(command -v nix)" ]; then
  PATH="${PATH:+${PATH}:}$HOME/.nix-profile/bin"
fi
