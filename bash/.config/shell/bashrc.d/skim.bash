fif() {
  if [ ! "$#" -gt 0 ]; then
    echo "Need a string to search for!";
    return 1; 
  fi;
  sk --cmd-query "$1" --ansi \
    -c 'rg --ignore-case --sort path --files-with-matches --no-messages "{}"' \
    --preview "BAT_STYLE=numbers,snip batgrep {cq} {} --context 5 --color=always --no-separator --ignore-case";
}
