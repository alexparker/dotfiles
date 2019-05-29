### Install brew packages ###

brew install zsh zsh-completions
brew install tig
brew install vim
brew install autojump
brew install git
brew install tmux
brew install the_silver_searcher
brew install yarn
brew install nvm
brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc

### Install things via curl

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Fresh Shell config manager
bash -c "`curl -sL https://get.freshshell.com`"


### Install things via git clone

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc


### Install applications with brew cask ###

brew cask install alfred
brew cask install bartender
brew cask install docker
brew cask install dropbox
brew cask install droplr
brew cask install firefox
brew cask install google-drive
brew cask install hammerspoon
brew cask install imageoptim
brew cask install iterm2
brew cask install keybase
brew cask install loopback
brew cask install polymail
brew cask install postman
brew cask install sketch
brew cask install slack
brew cask install sublime-text
brew cask install tableplus
brew cask install transmission
brew cask install viscosity
brew cask install vlc


### macOS specific settings ###

# Finder: show all filename extensions
# http://www.defaults-write.com/display-the-file-extensions-in-finder/
# Revert to the default
# defaults write NSGlobalDomain AppleShowAllExtensions -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Disable the extension change warning in OS X Finder
# http://www.defaults-write.com/disable-the-extension-change-warning-in-os-x-finder/
# Revert to the default
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
# http://www.defaults-write.com/change-default-view-style-in-os-x-finder/
# Revert to the default
# defaults write com.apple.Finder FXPreferredViewStyle icnv
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Remove the Dock Auto-Hide & Show Delay
# http://www.defaults-write.com/remove-the-dock-auto-hide-show-delay/
# Revert to the default
# defaults delete com.apple.Dock autohide-delay
defaults write com.apple.dock autohide-delay -float 0

# Reduce the animation when hiding/showing the Dock to 0.5s
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done
