# Dotfiles

Personal Vim and tmux configuration.

## Layout

- `vim/` – Vim config (symlinked to `~/.vim`)
- `tmux/` – tmux config + helpers (symlinked to `~/.tmux.conf`, `~/.tmux/bin`, `~/.tmux/projects`)
- `install.sh` – installs symlinks (backs up existing files with `.bak`)

## Install

```sh
./install.sh
```

## Update Workflow

- Edit files inside this repo (`vim/` or `tmux/`).
- Reload apps:
  - Vim: `:source ~/.vimrc`
  - tmux: `C-a :` then `source-file ~/.tmux.conf`
- Commit changes.

## tmux projects

Project definitions live in `tmux/projects/`.

Window format:

```
name|dir|layout|cmd1|cmd2|...
```

- `layout` is optional (e.g., `main-vertical`, `even-horizontal`).
- `cmd2+` create new panes; prefix with `h:` or `v:` to control split direction.

Launch from tmux:

- `C-a p` to pick a project.
- `C-a P` to type a project name.

## Notes

- Vim plugins are installed via vim-plug; plugin dirs are ignored by git.
- Swap/undo/backup files are not tracked.
