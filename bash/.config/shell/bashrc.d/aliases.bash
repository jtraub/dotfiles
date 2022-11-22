# color alias
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'

alias more=less

if [ -x "$(command -v lazydocker)" ]; then
  alias lzd='lazydocker'
fi

if [ -x "$(command -v batman)" ]; then
  alias man='batman'
fi

alias ..='cd ..'
alias ...='cd ../..'

# su should start a login shell
# see https://wiki.archlinux.org/title/Su#Login_shell for details
alias su="su -l"
