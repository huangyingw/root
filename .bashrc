# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
#export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  echo "Initializing new SSH agent..."
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add;
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  #ps ${SSH_AGENT_PID} doesn't work under cywgin
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
alias apf='aptitude full-upgrade'
alias api='apt-get install'
alias apu='apt-get update'
alias chmoda='/root/chmoda.sh'
alias d='make && /root/debug.sh'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias r='./run'
alias m='make'
alias mov='/root/move.sh'
alias rsc='/root/rsync.sh'

#alias for git
alias	g='git commit -am "n" && git push --all && git push --tags'
alias	gad='git add'
alias	gbi='git bisect'
alias	gbib='git bisect bad'
alias	gbig='git bisect good'
alias	gbir='git bisect reset'
alias	gbis='git bisect start'
alias	gbr='git branch'
alias	gbra='git branch -a'
alias	gbrc='git branch --contains'
alias	gci='git commit -am'
alias	gcb='/root/gcb.sh'
alias	gcl='git clone'
alias	gclb='git clone --bare'
alias	gctb='/root/gctb.sh'
alias	g='git commit -am "n" && git push --all && git push --tags'
alias	gco='git checkout'
alias	gcob='git checkout -b'
alias	gch='git cherry'
alias	gchp='git cherry-pick'
alias	gdi='git diff'
alias	gfe='git fetch'
alias	gin='git init'
alias	glf='git ls-files'
alias	glg='git log --pretty=oneline'
alias	glga='git log --all'
alias	gme='git merge'
alias	gmet='git mergetool'
alias	gpl='git pull'
alias	gps='git push --all && git push --tags'
alias	grc='git rm --cached'
alias	grcr='git rm --cached -r'
alias	grs='git reset'
alias	grsh='git reset --hard'
alias	grsm='git reset --mixed'
alias	grss='git reset --soft'
alias	grt='git remote'
alias	grta='git remote add'
alias	grtao='git remote add origin'
alias	grtu='git remote update'
alias	grtv='git remote -v'
alias	grv='git revert'
alias	gsh='git show'
alias	gsm='git submodule'
alias gs='git status'
alias gsta='git stash'
alias gtag='/root/gtag.sh'
alias gtg='git tag -l -n1'
alias gvd='git difftool'
