# Alex Parker’s Dotfiles

## Tool/app dependencies
https://github.com/ggreer/the_silver_searcher
Tmux: `brew install tmux`
Tig: `brew install tig`


## Noteworthy files
[config/tmux.conf](https://github.com/alexparker/dotfiles/blob/master/config/tmux.conf)
[config/vimrc.bundles.local](https://github.com/alexparker/dotfiles/blob/master/config/vimrc.bundles.local)
[config/tigrc](https://github.com/alexparker/dotfiles/blob/master/config/tigrc)
[alex.zsh-theme](https://github.com/alexparker/dotfiles/blob/master/alex.zsh-theme) (prompt)
[ctrlp.vim](https://github.com/alexparker/dotfiles/blob/master/config/vimrc.options.ctrlp)



### My ever-changing vim color scheme:
[alexparker/vim-axp-colors/colors/mad_unicorn.vim](https://github.com/alexparker/vim-axp-colors/blob/master/colors/mad_unicorn.vim)


## Setup

### 1) Install dotfiles

```sh
git clone https://github.com/alexparker/dotfiles.git
```

### 2) Install Fresh

```sh
sh -c "`curl -sLa https://raw.githubusercontent.com/alexparker/fresh/master/install.sh`"
````

`ln -s ~/.dotfiles/freshrc ~/.freshrc`

source `~/.fresh/build/shell.sh`
```sh
echo “source ‘~/.fresh/build/shell.sh’” >> ~/.zshrc
```

I am trying to keep a list of all the shortcuts I use regularly for vim here:
[Vim Shortcuts](vim-shortcuts.md)



## Docker Notes

sudo sh -c “wget -qO- https://get.docker.io/gpg | apt-key add -”
sudo sh -c “echo deb http://get.docker.io/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list”
sudo apt-get update
sudo apt-get install lxc-docker
