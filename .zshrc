# Path to your oh-my-zsh installation.
export ZSH=/Users/joseluistorres/.oh-my-zsh

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
plugins=(git bundler osx rake ruby)

# User configuration

export PATH=$PATH:/Users/joseluistorres/.rvm/gems/ruby-2.3.1/bin:/Users/joseluistorres/.rvm/gems/ruby-2.0.0-p353/bin:/Users/joseluistorres/.rvm/gems/ruby-2.0.0-p353@global/bin:/Users/joseluistorres/.rvm/rubies/ruby-2.0.0-p353/bin:/Users/joseluistorres/.nvm/v0.10.33/bin:/Users/joseluistorres/.npm-packages/bin:/usr/local/heroku/bin:/opt/local/bin:/opt/local/sbin:/Users/joseluistorres/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Users/joseluistorres/.rvm/bin
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
#
#

function mini() {
  ruby -Ilib:test "$@"
}

function gco1() {
  echo "$@" | pbcopy | gco "$@"
}

function rollback(){
  rake db:migrate:down VERSION="$@"
}


alias be="bundle exec"
alias cc="vim config/deploy.rb"
alias gl='git pull'
alias ga='git add'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gpum='git push upstream master'
alias gpm='git pull upstream master'
alias moto='cd ~/motorlot/Motorlot'
alias eh='sudo vim /etc/hosts'
alias vu='vagrant up'
alias vd='vagrant destroy'
alias vp='vagrant provision'
alias vss='vagrant ssh'
alias migra='be rake db:migrate'
alias gfs="git flow feature start"
alias gff="git flow feature finish"
alias prax='cd ~/rails_apps/mmp360site'
alias glu='git pull upstream'
alias gpu='git push upstream'
alias myc='cat ~/.ssh/config'
alias seed='rake db:seed'
alias rs='rails s'
alias amonos='ssh -C agsolver-jumpbox'
alias roi='cd /Users/joseluistorres/rails_apps/praxik/roisite'
alias chrt='rake routes | grep'
alias v="open -a VimR"
alias rc="rails c"
alias gcl="git rev-parse --abbrev-ref HEAD | grep -oh \"issue-*.*$1\" | pbcopy "
alias d1="aws opsworks create-deployment --stack-id e1441554-afd3-4798-8255-bb0358ea2b46 --app-id 3d39f3e9-8749-445f-9d3e-8734b290ee66 --command '{ \"Name\": \"deploy\" }'"
alias st="aws opsworks --region us-east-1 describe-deployments --stack-id e1441554-afd3-4798-8255-bb0358ea2b46 | grep -C 5 "
alias pzm2="aws opsworks create-deployment --stack-id 567a22dd-2fa4-4ba1-a33e-2ebedf5fa2c3 --app-id d3f0d0ea-590e-4840-b63e-f250400f0098 --command '{ \"Name\": \"deploy\" }'
"
alias workers=$'aws ec2 describe-instances --filters "Name=tag:Name,Values=nimbus_pzm*_local,nimbus_pzm*_development-machdata" --query \'Reservations[].Instances[].[[Tags[?Key==`Name`].Value][0][0], InstanceId, State.Name]\' --output table'
alias start_workers="aws ec2 start-instances --instance-ids "
alias end_workers="aws ec2 stop-instances --instance-ids "
alias sk="be sidekiq > log/sqs_messages.log"
alias cre="redis-cli flushall"
alias mt="ruby -Ilib:test $1 -v"
alias stc="cd ~/rails_apps/badger"
alias wp="cd /Users/joseluistorres/rails_apps/praxik/roisite && ./bin/webpack-dev-server"
alias ssh_stc="ssh capstan@capstan-master-1.stonecroptech.com"
alias grod='git pull --rebase origin development'
alias gcod='git checkout development'

function gco1() {
  echo "$@" | pbcopy | gco "$@"
}

alias be="bundle exec"
alias cc="vim config/deploy.rb"

alias mt="ruby -Ilib:test $1 -v"
alias stc="cd ~/rails_apps/badger"
alias ahuevo='git push -f origin $(git_current_branch)'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export GOPATH=$HOME/golang
#export GOPATH=$GOPATH:$HOME/go_apps
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
