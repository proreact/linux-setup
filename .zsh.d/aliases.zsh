alias reloadzsh="source ~/.zshrc"
alias vi="vim"

alias glog='git log --pretty=format:"%C(yellow)%h%Creset %C(green)%an%Creset %C(blue)(%ar)%Creset%n%s"'
alias glc="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias apts='apt search --names-only'