alias fu="git add -A && git commit -m '🙃' && git push"
alias ll="ls -lrtha"
alias dev="cd ~/Dev"
alias drivers="cd ~/Dev/core/drivers"
alias carriers="cd ~/Dev/core/carriers"
alias fuel="cd ~/Dev/core/fuel"
alias loads="cd ~/Dev/core/loads"
alias core="cd ~/Dev/core"
alias hekla="cd ~/Dev/hekla"
alias pgup="brew services start postgresql"
alias pgdown="brew services stop postgresql"
alias pg="psql postgres"
alias mgup="brew services start mongodb-community"
alias mgdown="brew services stop mongodb-community"

alias knxnpm="cd ~/Dev/knx.infrastructure-npm"
alias knxnuget="cd ~/Dev/knx.infrastructure"
alias clearLogstashLock="rm /usr/local/Cellar/logstash-full/7.17.4/libexec/data/.lock"
alias config="vim ~/.bash_profile"
alias boop="source ~/.bash_profile"
alias killgp="sudo /Applications/GlobalProtect.app/Contents/Resources/uninstall_gp.sh"
alias fb="cd ~/Dev/freightbox-monorepo"

alias ampoff="sudo launchctl unload /Library/LaunchDaemons/com.cisco.amp* && sudo launchctl unload /Library/LaunchDaemons/com.cisco.endpoint.orbital.plist && sudo killall cisco"
alias ampon="sudo launchctl load /Library/LaunchDaemons/com.cisco.*"

alias onedriveoff="sudo launchctl unload /Library/LaunchDaemons/com.microsoft.OneDr*"
alias onedriveon="sudo launchctl load /Library/LaunchDaemons/com.microsoft.OneDr*"

alias gpoff="sudo launchctl unload /Library/LaunchDaemons/com.paloalto*"
alias gpon="sudo launchctl load /Library/LaunchDaemons/com.paloalto*"


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

fortune | cowsay |lolcat

# .NET Core
export PATH="$PATH:/Users/$USER/.dotnet/tools"

# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

