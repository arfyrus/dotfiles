# Dotfiles

## Dependencies

### CLI
- bat
- gcc
- git
- eza
- neovim
- stow

### Fonts
- Berkeley Mono
- Jetbrains Mono

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
bat cache --build
tmux source ~/.config/tmux/tmux.conf
```
