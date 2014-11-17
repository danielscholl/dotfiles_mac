#!/bin/sh
 
# homebrew-cask
brew tap phinze/homebrew-cask
brew install brew-cask
brew tap caskroom/versions
 
# browser
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary
 
# development
brew cask install sublime-text3
brew cask install filezilla
brew cask install kaleidoscope
brew cask install iterm2
brew cask install sourcetree
brew cask install vagrant
brew cask install virtualbox
brew cask install vmware-fusion
brew cask install webstorm
 
# other
brew cask install alfred
brew cask alfred link
brew cask install dropbox
brew cask install macdown
brew cask install skype
brew cask install spotify
brew cask install dash 
brew cask install macdown