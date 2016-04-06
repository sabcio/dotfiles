alias gs="git status"
alias gpl="git pull --rebase"
alias gp="git push"
alias ga="git add ."
alias gc="git commit -m"
alias gres="git reset --hard HEAD"
alias gco="git checkout"

grb(){
  git rebase --interactive HEAD~$1
}


gprune() {
  git fetch -p
  git branch --merged master | grep -v 'master$' | xargs git branch -d
}
