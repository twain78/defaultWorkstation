# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/developer/.oh-my-zsh 

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="odin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# enable ksh globbing -- disabled cause its bug prone to use multiple globbing options
# setopt kshglob

# enable extended globbing 
setopt extendedglob

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"


# Activating Vi-Mode
# bindkey -v

# ctrl + space for accepting autouggest
bindkey '^ ' autosuggest-accept

# ctrl + j emulates enter automatically
# rewired ctrl + t to work like ctrl + j
bindkey '^t' accept-line
bindkey '^j' accept-line

# highlight prompt
#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $(git_custom_status) $EPS1"
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

# Killing 0.4 Delay
export KEYTIMEOUT=1

### My Aliases 
#

alias suro="su root"


# switching application-keyboard-layouts
# alias koy="cp  ~/myDotFilesForGithub/.vimrc_adnw_koy .vimrc"
alias pug="" # TODO PUG-Shortcut
alias qwertz="cp  ~/myDotFilesForGithub/.vimrc_normal .vimrc"

# (u)mount intern harddrives
alias mountHDD="su root -c 'mount_InternHDD.sh; exit'"
alias umountHDD="su root -c 'umount_InternHDD.sh; exit'"

# browser
alias chrm="google-chrome &"
alias qt="qutebrowser &"

# media-aliases
alias spot="spotify &"
alias skyp="skype &"

# work-tools
alias v="vim"
alias em="emacs &"

# git-aliases
alias gall="git add ." # git add all
alias glog="git log"
alias gstat="git status"
alias gcola="git-cola &"
alias gdag="git-dag &"

# echo current path
alias echop="echo $PWD"

# coz = compile openz
alias coz="/usr/bin/openz_MonitorBuild.sh"

# login into db but this thing is buggy
# auch das hier ist buggy...
alias sqlLogin="su root -c 'su postgres -c 'psql openz''" # fix sqlLogin1 wahrscheinlich, da in einem shell-script eine weitere Shell geöffnet wird
# alias sqlLogin="/usr/bin/sqlLogin.sh"
# alias sqlLogin2="su root -c 'su postgres -c 'psql openz''" # fix sqlLogin1 wahrscheinlich, da in einem shell-script eine weitere Shell geöffnet wird

# start and shutdown tomcat-server
alias tup="/home/developer/tomcat/bin/startup.sh"
alias town="/home/developer/tomcat/bin/shutdown.sh"

# stands for steuer-tmux
alias stmux="ssh openz@192.168.80.153 -t tmux a"

### My Environment Variables

# JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64

# my current WorkLog -- under codeStash/old is my Work-Archive
export CS=/home/developer/codeStash

# my new OrgLog
export OS=/home/developer/orgStash

# foreign Projects may lay here
export FS=/home/developer/foreignSource

# here lies python-Source
export FPS=/home/developer/foreignSource/languageSource/pythonSource

# planned on moving ruby-Source here
# export FRS=/home/developer/rubySource

# planned on moving haskell-Source here
# export FHS=/home/developer/haskellSource -- Alternative FHKS

# my work Projects lay here
export WS=/home/developer/Source

# my private Projects lay here
export HS=/home/developer/hobbySource

# tomcat path to bin-Folder
export TOMCAT_BIN=/home/developer/tomcat/bin

# tomcat path to log-Folder
export TOMCAT_LOG=/home/developer/tomcat/logs

# tomcat path to design-Folder
export TOMCAT_DESIGN=/home/developer/tomcat/webapps/openz/src-loc/design

# path to $OPENZ_GITOSS/src-db/sql
export OPENZ_SQL=/home/developer/Source/OpenSourceTrunc/openz/src-db/sql

# vim-reload-hook
catch_sigusr1() {

	trap catch_sigusr1 USR1
	vim ~/.vimrc;
}
trap catch_sigusr1 USR1

# navigation
alias cdogo="cd $OPENZ_GITOSS"
alias cdogp="cd $OPENZ_GITPT"
alias cdcs="cd $CS"
alias cdos="cd $OS"
alias cdhs="cd $HS"
alias cdtomd="cd $TOMCAT_DESIGN"
alias cdtoml="cd $TOMCAT_LOG"
alias cdtomb="cd $TOMCAT_BIN"

alias cdhsfh="cd $HS/Java/FretboardHelper"

### find-Functions
function fn () {
	find -name $1
}
###

### TeamOcil-Functions
function toh () {
	teamocil --here $1
}

function toe() {
	teamocil --edit $1
}
###

### Config-Options für Tag-Programm -- https://github.com/aykamko/tag
if (( $+commands[tag] )); then
  export TAG_SEARCH_PROG=ag  # replace with rg for ripgrep
    tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
    alias ag=tag  # replace with rg for ripgrep
fi
###
