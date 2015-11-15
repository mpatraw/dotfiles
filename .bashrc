#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Remap CapsLock to Ctrl.
setxkbmap -option ctrl:nocaps

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export TERM=xterm-256color
export BROWSER=chromium

export GOPATH=~/devel
export PATH=$PATH:$GOPATH/bin:~/tools
export PATH=$PATH:/opt/android-sdk/tools
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:/opt/android-sdk/build-tools

if which ruby >/dev/null && which gem >/dev/null; then
	PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
