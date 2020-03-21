function cptar() {
  mkdir -p "$2" &&
    (tar -C "$1" -cf - .) | pv -trab --buffer-size 100M | (tar -C "$2" -xf - .)
}
