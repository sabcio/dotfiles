alias shellygem="cd ~/projects/shellycloud/shelly"
alias shellyapp="cd ~/projects/shellycloud/shelly-app"

alias shelly_st_local="SHELLY_URL=https://api.testing.shellycloud.com/apiv2 RUBYLIB=~/projects/shelly/lib noglob shelly"
alias shelly_st="SHELLY_URL=https://api.testing.shellycloud.com/apiv2 noglob shelly"
alias shelly_local="SHELLY_URL=http://winnie-app.dev/apiv2 RUBYLIB=~/projects/shelly/lib noglob shelly"
alias shelly_pro="RUBYLIB=~/projects/shelly/lib noglob shelly"

alias winnieapp="cd ~/projects/shellycloud/winnie-app"
alias winniechef="cd ~/projects/shellycloud/winnie-chef"
alias winnietest="cd ~/projects/shellycloud/winnie-test"

# add wce, sly and paymill_accounting to PATH
export PATH=~/projects/shellycloud/winnie-app/bin:$PATH

alias r="bundle exec rails"
alias b="bundle"
alias be="bundle exec"
alias rsp="bundle exec rspec"

alias subl="reattach-to-user-namespace subl"

alias wccp="ssh winnie@cc3.winniecloud.net"

export LS_COPTIONS='--color=auto'
alias l="ls $LS_COPTIONS -lAh --group-directories-first"
ccp(){
  if [[ -z "$1" ]]; then
    echo "=> Tell me which server to connect to!"
  else
    ssh -o StrictHostKeyChecking=no root@$1.winniecloud.net
  fi
}

ccc(){
  if [[ -z "$1" ]]; then
    echo "=> Tell me which server to connect to!"
  else
    ssh -o StrictHostKeyChecking=no root@$1.slc.io
  fi
}

export EDITOR="subl -w"

pogoda(){
  if [[ -z "$1" ]]; then
    curl -4 http://wttr.in/Oława
  else
    curl -4 http://wttr.in/$1
  fi
}
