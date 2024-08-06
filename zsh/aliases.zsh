# MARK: Base

alias grep="grep -P -i --color=auto"
alias mkdir="mkdir -pv"
alias run="./run"
alias brewup="brew update && brew upgrade && brew cleanup"

# cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# l
if [[ $(uname) == "Darwin" ]]; then
    alias ls="gls -l --group-directories-first --color=auto"
else
    alias ls="ls --group-directories-first --color=auto"
fi

alias ll="ls -lahF"

# MARK:Python

alias python="python3"
alias jup="jupyter notebook"

# MARK: Git

alias g='git'

# Add (a)
alias ga="git add"
alias gaa="git add -a"
alias gau="git add -u"

# Branch (b)
alias gb='git branch'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbc='git switch --create'
alias gbs='git switch'

# Checkout (c)
alias gcm="git checkout main"
alias gcb="git checkout -b"

# Commit (c)
alias gcmsg="git commit -m"

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfm='git pull'
alias gfma='git pull --autostash'
alias gfr='git pull --rebase'
alias gfra='git pull --rebase --autostash'

# Merge (m)
alias gm='git merge'
alias gmt='git mergetool'

# Push (p)
alias gp="git push"
alias gpo="git push origin"

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Status (s)
alias gst="git status"
