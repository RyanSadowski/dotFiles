alias fu="git add -A && git commit -m '🙃' && git push"
alias ll="ls -lrtha"
alias dev="cd ~/Dev"
alias pgup="brew services start postgresql"
alias pgdown="brew services stop postgresql"
alias pg="psql postgres"
alias mgup="brew services start mongodb-community"
alias mgdown="brew services stop mongodb-community"

alias clearLogstashLock="rm /usr/local/Cellar/logstash-full/7.17.4/libexec/data/.lock"
alias config="vim ~/.bash_profile"
alias boop="source ~/.bash_profile && tmux source ~/.config/tmux/tmux.conf"



export BASH_SILENCE_DEPRECATION_WARNING=1
launchctl unload -w /System/Library/LaunchAgents/com.apple.red.plist 2> /dev/null
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.finder AppleShowAllFiles true

#for PS1
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\] 👻 "

export PATH="$PATH:/$HOME/.local/bin"
export PATH="/usr/local/bin:$PATH"
export PATH=${HOME}/gn:"$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Nordic NRF9160 stuff
export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export GNUARMEMB_TOOLCHAIN_PATH="~/gnuarmemb"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
#source $(brew --prefix)/opt/chruby/share/chruby/auto.sh

# .NET Core
export PATH="$PATH:/Users/$USER/.dotnet/tools"

# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"

tmux source ~/.config/tmux/tmux.conf

fortune | cowsay |lolcat
