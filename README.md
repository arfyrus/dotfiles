# Dotfiles

## Installation

Clone the repo:

```bash
git clone https://github.com/arfyrus/dotfiles.git
```

Use [stow](https://www.gnu.org/software/stow/) to create symlinks:

```bash
# .../dotfiles

stow *
```

Source packages:

```bash
source ~/.zshrc
source ~/.vimrc
bat build --cache
tmux source ~/.config/tmux/tmux.conf
```
