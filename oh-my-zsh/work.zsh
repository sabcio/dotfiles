alias r="bundle exec rails"
alias b="bundle"
alias be="bundle exec"
alias rsp="bundle exec rspec"

alias l="ls -lAhG"

export EDITOR="atom"

pogoda(){
  if [[ -z "$1" ]]; then
    curl -4 http://wttr.in/Oława
  else
    curl -4 http://wttr.in/$1
  fi
}
