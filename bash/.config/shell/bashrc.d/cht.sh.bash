function cht.sh() {
  if [ -x "$(command -v curl)" ]; then
    curl --silent "cht.sh/$1" | less -R;
  fi;
}
