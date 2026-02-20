#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_file() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mv "$dst" "${dst}.bak"
  fi
  ln -s "$src" "$dst"
}

# Vim
link_file "$DOTFILES_DIR/vim" "$HOME/.vim"
link_file "$DOTFILES_DIR/vim/init.vim" "$HOME/.vimrc"

# Tmux
link_file "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
mkdir -p "$HOME/.tmux"
link_file "$DOTFILES_DIR/tmux/bin" "$HOME/.tmux/bin"
link_file "$DOTFILES_DIR/tmux/projects" "$HOME/.tmux/projects"

printf "Installed dotfiles. Backup files are stored with .bak suffix.\n"
