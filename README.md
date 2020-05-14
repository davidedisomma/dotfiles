# dotfiles

### install

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

dotfiles remote add origin git@github.com:davidedisomma/dotfiles.git
dotfiles config --local status.showUntrackedFiles no
dotfiles fetch origin
dotfiles checkout --track origin/master
```

### usage

```
  dotfiles --help
```

---

### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

### brew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
cd .dotfiles_conf
sh dotfiles_conf/brew_app_install.sh
# To install powerlevel9k themes
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

#### iterm2
Go to (iterm2 -> preferences -> Profiles -> Text ) and click on 'Use built-in' Powerline glyphs.

navigate to the preferences window (iterm2 -> preferences), click on the general tab and towards the bottom of the window you should see an option that says `load preferences from a custom folder or url`. check this option and set the url according to `$HOME/.iterm2`.

```sh
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.iterm2"
```


#### sublime text 3
```shell
ST3=~/Library/Application\ Support/Sublime\ Text\ 3

rm -rf $ST3/Packages/User
ln -s ~/.st3/Packages/User $ST3/Packages/User

rm -rf $ST3/Installed\ Packages
ln -s ~/.st3/Installed\ Packages $ST3/Installed\ Packages
```
or just execute 
```
.dotfiles_conf/sublime_conf.sh
```
