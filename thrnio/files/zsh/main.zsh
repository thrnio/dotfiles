# -*- mode: sh -*-
setopt append_history
setopt inc_append_history
setopt share_history
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

setopt auto_cd
setopt auto_list
setopt auto_name_dirs
setopt auto_pushd
# correctall is getting annoying
# setopt correctall
setopt c_bases
setopt glob_complete
setopt interactivecomments
setopt list_packed
setopt magic_equal_subst
setopt multios
setopt noclobber
setopt nonomatch
setopt no_flow_control
setopt octal_zeroes
setopt rc_expand_param
setopt rm_star_wait
setopt prompt_subst

HISTFILE=~/.zsh/history
HISTSIZE=32767
LISTMAX=0
LOGCHECK=300
REPORTTIME=60
SAVEHIST=32767

VISUAL='emacsclient -c'
EDITOR='emacsclient -c'
SVN_EDITOR='emacsclient -c'
GIT_EDITOR='emacsclient -c'
MUTT_EDITOR='emacsclient -c'
PAGER='most'

export EMAIL='rw@puppetlabs.com'

export EDITOR='emacsclient -c'

# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash, underscore, semicolon.
export WORDCHARS='*?[]~=&!#$%^(){}'

# fix Firefox fonts
export MOZ_DISABLE_PANGO=1

MALLOC_CHECK_=1

# colorize things
autoload colors zsh/terminfo

if [[ "$terminfo[colors]" -ge 8 ]]; then
  colors
fi
#eval `dircolors ~/.dircolors`


zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile

. ~/.zsh/completion.zsh
. ~/.zsh/bind.zsh
. ~/.zsh/alias.zsh
. ~/.zsh/dirs.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/vcsinfo.zsh
. ~/.zsh/prompt.zsh
. ~/.zsh/startup.zsh
#. ~/Development/drush-zsh/drush.complete.zsh

# rbenv
if [ -d ~/.rbenv/bin ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi
if hash rbenv 2> /dev/null; then
  eval "$(rbenv init -)"
fi

#fpath=($DOTSDIR/lib/zsh/completion.d $fpath)
fpath=(/usr/local/share/zsh-completions/src $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit -i

#export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH:$HOME/.composer/vendor/bin

#eval $(keychain --eval --agents ssh -Q --quiet id_rsa 2011_ryan_id_rsa)
