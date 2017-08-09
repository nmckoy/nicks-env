#for virtualenvwrapper
alias virtualenvsrc='source /usr/local/bin/virtualenvwrapper.sh'
# for python anaconda
export PATH="$PATH"

#if [ -f ~/.sensible.bash ]; then
#  source ~/.sensible.bash
#fi
alias msbr='mvn spring-boot:run'

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[\[$(tput bold)\]\[$(tput setaf 6)\][\h:\W]\[\033[32m\]\$(parse_git_branch)\[\[$(tput bold)\]\[$(tput setaf 6)\] nick$ \[$(tput sgr0)\]"

# renaming tab
function tabn {
  printf "\e]1;$1\a"
}

# function ssh {
#   ssh -i ~/.pems/some_pem.pem ec2-user@$1
# }

alias kafarcunderrep='/usr/local/Cellar/kafka/0.9.0.0/bin/kafka-topics.sh --zookeeper {zookeeper} --list | xargs -I {} /usr/local/Cellar/kafka/0.9.0.0/bin/kafka-topics.sh --under-replicated-partitions --zookeeper {zookeeper} --topic {} --describe'

alias l='ls'
alias ll='ls -l'
alias la='ls -l -a'
alias cb='cd ..'
alias proj='cd ~/Dropbox\ \(Washington\ Post\)/Projects'
alias brewha='cd /usr/local/Cellar/'
alias profile='vim ~/.profile'
alias src='source ~/.profile'

# top mem process
alias topmem='ps aux -rss | head'
#copy o clipboard
function copy {
  pbcopy < $1
}
#docker stop/rm
function dockerKill {
  docker stop $1
  docker rm $1
}
alias dependency-tree='mvn dependency:tree -Dverbose'
