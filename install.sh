sudo apt-get update

sudo apt-get -y install \
	make \
	curl \
	tmux \
	git \
	tig \
	docker.io\

sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker

# RUBY
  # Install Rbenv
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc

    # Install Ruby-build plugin for Rbenv
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install github CLI wrapper for git
  git clone https://github.com/github/hub.git /tmp/hub
  cd /tmp/hub
  rake install prefix=/usr/local

# Install dotfiles
  git clone https://github.com/alexparker/dotfiles ~/.dotfiles

  echo "export ENV_LABEL='Remote Dev'" >> ~/.bashrc
  echo "export ENV_COLOR=$(tput setaf 160)" >> ~/.bashrc

# Install fresh
  bash -c "`curl -sL https://raw.githubusercontent.com/alexparker/fresh/master/install.sh`"
  echo "source ~/.fresh/build/shell.sh" >> ~/.bashrc

# Install spf13 fork
  sh <(curl https://raw.githubusercontent.com/alexparker/spf13-vim/3.0/bootstrap.sh)



# TODO:
# [ ] Setup zsh so it will play nice with mac & linux
# [ ] Setup oh-my-zsh



