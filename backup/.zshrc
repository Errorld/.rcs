# Path to your oh-my-zsh installation.
  export ZSH=/home/sekai/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# file works
alias -s txt=vim

# shotcut
alias vi='vim'
    # apt-get
alias _install='sudo apt-get install'
alias _update='sudo apt-get update'
alias _upgrade='sudo apt-get upgrade'
    # git
alias _clone=_clone
_clone()
{
    git clone git@github.com:$1/$2.git 
}

#trash
alias rm=trash
mkdir -p .trash
trash()
{
    mv $@ ~/.trash/
}
# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# flask
export MAIL_USERNAME='458436919@QQ.COM'
export MAIL_PASSWORD='3191203zant3115'
export FLASKY_ADMIN='458436919@QQ.COM'

##ruby
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

##jekyll
# new post
alias newp=newp
newp()
{
    title=$1
    pdate=`date +%Y-%m-%d`
    pname=~/errorld.github.io/_posts/$pdate-$title.md
    echo $pname
    touch $pname
    ###
    echo '---'>>$pname
    echo 'layout: post'>>$pname
    echo 'title: '$title>>$pname
    echo 'date: '$pdate>>$pname
    echo 'categories: blog'>>$pname
    echo 'tags: [,]'>>$pname
    echo 'description: '>>$pname
    echo '---'>>$pname
    ###
    vim $pname
}
# push post
alias pushp=pushp
pushp()
{
    git add $pname
    git commit -m 'new post: '$title
    git push&
}
