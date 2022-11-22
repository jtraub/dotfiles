if [ -x "$(command -v pew)" ]; then
  export WORKON_HOME=~/.local/pew
  source "$(pew shell_config)"
fi