## General aliases
alias c='claude'
alias code='code .'
alias vi='/usr/bin/vim'
alias xdd='rm ~/Library/Developer/Xcode/DerivedData/*'
alias cdd='cd ~/repos/ditto/'
alias readme='code README.md'
alias gemfile='code Gemfile'
alias makefile='code Makefile'
alias ls='eza'
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
  alias la='eza -la --git'
  alias ll='eza -l --git'
  alias lt='eza -T'
else
  alias la='eza -la --icons --git'
  alias ll='eza -l --icons --git'
  alias lt='eza -T --icons'
fi
alias brewup='brew update && brew upgrade && brew cleanup && brew doctor'
alias cat=bat
alias cp='cp -i'
alias mv='mv -i'
alias dcom='docker compose'
alias dbe='docker compose run app bundle exec'
alias dbi='docker compose run app bundle install'
alias rm='trash'

## git wrapper
git() {
  if [[ "$1" == "init" ]]; then
    command git "$@" && cp ~/.gitignore-template .gitignore
  else
    command git "$@"
  fi
}

## git alias
alias gcurrent='git branch --show-current'
alias gs='git status -sb'
alias gaa='git add -A'
alias gb='git branch -a'
alias gbd='git branch -D'
alias gc='git commit -m'
alias gcae='git commit --allow-empty -m Initial'
alias gco='git switch'
alias gcob='git switch -c'
alias gm='git switch main'
alias gcod='git switch develop'
alias grh='git clean -df && git reset --hard'
alias grhh='git reset --hard HEAD^ && git clean -df'
alias gd='git diff'
alias gl='git pull && git fetch --prune && gbm'
alias gbm="git branch --merged | grep -vE '^\*|main|master|develop' | xargs -I '{}' git branch -d '{}'"
alias glf='git fetch && git reset --hard origin/$(gcurrent)'
alias glo='git log --oneline --decorate --graph'
alias gpf='git push --force-with-lease'
alias gp='git push -u origin HEAD'
alias gf='git fetch --prune'
alias grm='git rebase main'
alias gsub='git submodule update --init --recursive && git submodule sync'
alias gtag='git tag -l --sort=-v:refname | head -n 25'
alias ghb='gh browse'

## bundle alias
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'

## rails alias
alias rs='be rails s'
alias rn='be rails new'
alias rdc='be rails db:create'
alias rdm='be rails db:migrate'
alias rdr='be rails db:rollback'
alias rds='be rails db:seed'
alias rdd='be rails db:drop'
alias rr='be rails routes'
alias rbp='be rails_best_practices'
alias dcr='docker compose run app rails'

## node alias
alias nr='npm run'
alias npm-clean='rm -rf ./node_modules && npm cache clean --force && npm install'

## directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

mkcd() {
  mkdir -p "$1" && cd "$1"
}

## utilities
alias path='echo $PATH | tr ":" "\n"'
alias ports='lsof -i -P -n | grep LISTEN'
alias myip='curl -s ifconfig.me'
alias dsclean='sudo find / -name ".DS_Store" -type f -delete 2>/dev/null'
alias reload='source ~/.zshrc'
