#
# ~/.bashrc
#

[[ $- != *i* ]] && return

# run X applications as root
xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases


# Load all files from .shell/bashrc.d directory
if [ -d $HOME/.config/shell/bashrc.d ]; then
  for file in $HOME/.config/shell/bashrc.d/*.bash; do
    [ -e "$file" ] || continue
    source $file
  done
fi

if [ -x "$(command -v starship)" ]; then
	eval "$(starship init bash)"
fi

# Make less respect ANSI colors and more verboseful
export LESS="-MR"

#. /opt/asdf-vm/asdf.sh
