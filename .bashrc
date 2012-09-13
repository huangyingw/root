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
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
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
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

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

#alias for git
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

alias sancho=~/sancho-0.9.4-59-linux-gtk-x86_64-java/sancho 
alias argouml=/home/huangyingw/Downloads/argouml-0.34/argouml2.sh
alias apf='apt-get update && aptitude full-upgrade'
alias api='apt-get install'
alias aps='$HOME/bashrc/aps.sh'
alias apu='apt-get update'
alias b='bochs'
alias ca='$HOME/bashrc/ca.sh'
alias csr='$HOME/bashrc/csr.sh'
alias cr='$HOME/bashrc/check_raid.sh'
alias d='make && $HOME/bashrc/debug.sh'
alias ll='ls -alF'
alias rt='$HOME/reboot.sh'
alias dof='$HOME/bashrc/dof.sh'
alias exiso='$HOME/bashrc/exiso.sh'
alias encrypt='$HOME/bashrc/encrypt.sh'
alias fc='$HOME/bashrc/fc.sh'
alias fd='$HOME/bashrc/fd.sh'
alias ff='$HOME/bashrc/ff.sh'
alias fgh='$HOME/bashrc/fgh.sh'
alias fgs='$HOME/bashrc/fgs.sh'
alias flatest='$HOME/bashrc/flatest.sh'
alias flargest='$HOME/bashrc/flargest.sh'
alias fr='$HOME/bashrc/fr.sh'
alias fw='$HOME/bashrc/fw.sh'
alias fjar='$HOME/bashrc/fjar.sh'
alias vitag='$HOME/bashrc/vitag.sh'
alias vlog='$HOME/bashrc/vlog.sh'
alias ntp='$HOME/bashrc/ntp.sh'
alias tk='$HOME/myproject/git/linux/bashrc/task.sh'
alias ssh='ssh -X'

#alias for git
alias la='ls -A'
alias l='ls -aclt'
alias linuxmirror='$HOME/bashrc/linuxmirror.sh'
alias r='$HOME/bashrc/run.sh'
alias rb='$HOME/bashrc/runb.sh'
alias m='make'
alias mb='make -B'
alias mklnk='$HOME/bashrc/mklnk.sh'
alias mov='$HOME/bashrc/move.sh'
alias tmov='$HOME/bashrc/tmove.sh'
alias mirror='$HOME/bashrc/mirror.sh'
alias tmirror='$HOME/bashrc/tmirror.sh'
alias copy='$HOME/bashrc/copy.sh'
alias dcopy='$HOME/bashrc/dcopy.sh'
alias tcopy='$HOME/bashrc/tcopy.sh'
alias typersync='$HOME/bashrc/type_rsync.sh'
alias rsync_svn='$HOME/bashrc/rsync_svn.sh'
alias trsync_svn='$HOME/bashrc/trsync_svn.sh'
alias wol='$HOME/bashrc/wol.sh'

#alias for git
alias	g='$HOME/bashrc/g.sh'
alias	ga='$HOME/bashrc/ga.sh'
alias	gagh='$HOME/bashrc/gagh.sh'
alias	gbi='git bisect'
alias	gbib='git bisect bad'
alias	gbig='git bisect good'
alias	gbir='git bisect reset'
alias	gbis='git bisect start'
alias	gbr='git branch'
alias	gbra='git branch -a'
alias	gbrc='git branch --contains'
alias	gbrD='$HOME/bashrc/gbrD.sh'
alias	gbrs='$HOME/bashrc/gbrs.sh'
alias	gci='git commit -am'
alias	gclb='$HOME/bashrc/gclb.sh'
alias	gcl='$HOME/bashrc/gcl.sh'
alias	gctb='$HOME/bashrc/gctb.sh'
alias	gco='git checkout'
alias	gcob='git checkout -b'
alias	gcof='$HOME/bashrc/gcof.sh'
alias	gch='git cherry'
alias	gchp='git cherry-pick'
alias	gdi='git diff'
alias	gfe='git fetch'
alias	gfix='$HOME/bashrc/gfix.sh'
alias	gi='$HOME/bashrc/gi.sh'
alias	gib='$HOME/bashrc/gib.sh'
alias	gicb='$HOME/bashrc/gicb.sh'
alias	glf='git ls-files'
alias	glg='git log --pretty=oneline'
alias	glga='git log --all'
alias	gme='git merge'
alias	gmet='git mergetool'
alias	gpl='$HOME/bashrc/gpl.sh'
alias	gps='$HOME/bashrc/gps.sh'
alias	grc='$HOME/bashrc/grc.sh'
alias	grcr='git rm --cached -r'
alias	grs='git reset'
alias	grsh='$HOME/bashrc/grsh.sh'
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
alias gsf='$HOME/bashrc/gsf.sh'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gtag='$HOME/bashrc/gtag.sh'
alias gtg='git tag -l -n1'
alias gvd='git difftool'

$HOME/bashrc/check_raid.sh
HERITRIX_HOME=$HOME/myproject/git/java/heritrix-1.14.4/
JAVA_OPTS=-Xmx1024M
#JAVA_HOME=/usr/lib/jvm/java-6-openjdk/jre/bin/java
CLASSPATH=/media/volgrp/myproject/git/java/lucene/lucene-3.0.1/lucene-core-3.0.1.jar:/media/volgrp/myproject/git/java/lucene/lucene-3.0.1/lucene-demos-3.0.1.jar:/media/volgrp/myproject/git/webapps/luceneweb/WEB-INF/lib/lucene-core-3.0.1.jar:/media/volgrp/myproject/git/webapps/luceneweb/WEB-INF/lib/lucene-demos-3.0.1.jar
export CLASSPATH

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31'
export  CVSROOT=:pserver:yhuang@cvssrv:/cvs/CVS
set -o vi
shopt -s dotglob


#export ACE_PATH=/pcc/lsfqa-trusted/soam_ext/ACE/com_platform_ACE_544_01/lib
#export ANT_HOME=/pcc/app/apache-ant-1.6.0
#export DOC_PATH=/pcc/id_trusted/publish/cloud/naegling2.0
#export DisableJUnit=true
#export JAVA_HOME=/pcc/lsfqa-trusted/3rdparty/jdk/1.5.0_08/linux-x86
#export PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$PATH
#export EGO_SHARED_DIR=cloud_ISF_SS_POC_DROP_4
#export GUI_TAR_DIR=/pcc/lsfqa-trusted/VMO_ext/vmo_monte/gui
#export RTM_ADD_ON=/pcc/lsfqa-trusted/rtm_ext/shared/2_0_SS_POC
#export VMO_MONTE_SHARE_DIR=/pcc/lsfqa-trusted/vmo_monte_ext/shared
export MOZILLA_FIVE_HOME=/usr/bin/mozilla
JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
