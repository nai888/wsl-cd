#=========
# wcd.sh
#
# cd to a Windows directory within WSL without needing to first convert the path using wslpath
#
# Add this script to ~/.bashrc. Referencing this script directly won't work.
#=========

wcd() {
  if [[ -z "$1" ]]; then
    echo "Error: no directory specified. Add a path argument." >&2
    return 1
  fi

  local target
  target="$(wslpath -u "$1")" || return 1

  cd "$target"
}
