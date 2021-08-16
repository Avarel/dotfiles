# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return ;;
esac

export DOTFILES="$HOME"

for rcfile in "$DOTFILES"/zshrc.d/*.zsh; do
  # shellcheck disable=SC1090
  source "$rcfile"
done