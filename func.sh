function dict() {
    grep $1 $HOME/Dictionaries/gene95.txt -A 1 -wi --color
}

function showcolors() {
  for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
}
