# Enable history appending instead of overwriting.  #139609
export HISTFILESIZE=150000
export HISTSIZE=2500
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
