alias r="bundle exec rails"
alias b="bundle"
alias be="bundle exec"
alias rsp="bundle exec rspec"
alias rspc="JS_DRIVER=chrome bundle exec rspec"

# alias subl="reattach-to-user-namespace subl"

export LS_COPTIONS='--color=auto'
alias l="ls $LS_COPTIONS -lAh --group-directories-first"

export EDITOR="subl -w"

pogoda(){
  if [[ -z "$1" ]]; then
    curl -4 http://wttr.in/Oława
  else
    curl -4 http://wttr.in/$1
  fi
}
