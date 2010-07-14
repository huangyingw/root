# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

#function try
#{
#	git clone --bare "$1" "$2" rm -frv "$1" mv "$2" "$1"
#}

#alias for Linux
alias apf='apt-get update && aptitude full-upgrade'
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
alias	grtao='git remote rm origin || git remote add origin'
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
