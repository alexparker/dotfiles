# Alex Parker’s Dotfiles


Hard Dependencies:
Git, Vim 7.4

Soft Dependencies
Bashmarks
Selecta

## Setup

### 1) Install dotfiles

```sh
git clone https://github.com/alexparker/dotfiles.git
```

### 2) Install Fresh

```sh
bash -c “`curl -sLa https://github.com/alexparker/fresh/blob/master/install.sh`”
````

source `~/.fresh/build/shell.sh`
```sh
echo “source ‘~/.fresh/build/shell.sh’” >> ~/.bashrc
```

### 3) Install spf13-Vim
```sh
sh <(curl https://github.com/alexparker/spf13-vim/blob/3.0/bootstrap.sh -L)
```

I am trying to keep a list of all the shortcuts I use regularly for vim here:
[Vim Shortcuts](vim-shortcuts.md)
