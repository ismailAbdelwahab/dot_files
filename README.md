# Dot files

## Import dotfile on new setup
I use **stow** as a dotfile manager.

1. Clone this repo
```bash
git clone git@github.com:ismailabdelwahab/dotfiles.git ~/.dotfiles
```
2. Install stow
3. Create symlinks using stow
```bash
stow --target=/home/<USERNAME> ~/.dotfiles
```
