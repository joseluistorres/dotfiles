export EC2_HOME=~/.ec2
export AWS_AUTO_SCALING_HOME=~/.ec2/autoscaling
export PATH=$PATH:$EC2_HOME/bin
export PATH=$PATH:$AWS_AUTO_SCALING_HOME/bin
export EC2_PRIVATE_KEY=pk-EKWJYEL554UVNWV6AB5WWAKJK45GNLNO.pem
export EC2_CERT=cert-EKWJYEL554UVNWV6AB5WWAKJK45GNLNO.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
export AWS_CREDENTIAL_FILE=~/.ec2/autoscaling/credential-file-scaling
#export RAILS_ENV="development"
source ~/.profile
##
# Your previous /Users/supinchecompilla/.bash_profile file was backed up as /Users/supinchecompilla/.bash_profile.macports-saved_2011-03-02_at_18:23:42
##

# MacPorts Installer addition on 2011-03-02_at_18:23:42: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias be="bundle exec"
alias cc="vim config/deploy.rb"
# git
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
