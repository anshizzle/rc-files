# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/anshuljain/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# RAILS SHORTCUTS
alias be='bundle exec'
alias migration-ssh="cx ssh -s 'Capyx' -e migration Penguin"
alias migrate="rake db:migrate; be annotate"
alias migrate-test="rake db:migrate RAILS_ENV=test"
alias db:reset="rake db:reset"
alias db:rollback="rake db:rollback STEP=1"
alias wds="bin/webpack-dev-server"

# DOCKER
alias dme='eval $(docker-machine env)'
alias ss="docker-compose exec web xvfb-run -a rspec"
alias console="docker-compose exec web rails c"

# GIT
alias gp="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done;"

# PROJ
alias proj="cd ~/Documents/proj"
alias clients="cd ~/Documents/clients"
alias capyx="cd ~/Documents/proj/capyx"
alias sk="cd ~/Documents/proj/schedule-hog"
alias ol="proj; cd open_listings"
alias olm="proj; cd mobile"

# MONGO 3.6
alias mng="/usr/local/opt/mongodb@3.6/bin/mongod --config /usr/local/etc/mongod.conf"

# Docker
alias dcb="docker-compose build"
alias dcs="docker-compose up -d" # docker-compose startserver
alias dce="docker-compose exec"

# POSTGRES
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"



# Unalias ohmyzsh's grb alias (for git rebase) so I can use git_remote_branch
unalias grb

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/anshuljain/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/anshuljain/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anshuljain/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/anshuljain/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(rbenv init -)"

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
source ~/.bash_profile

