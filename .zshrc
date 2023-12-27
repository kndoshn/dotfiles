# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source $HOME/.zshenv
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/Users/kndoshn/.deno/bin:$PATH"
eval "$(anyenv init -)"
eval "$(rbenv init -)"

## alias
alias vi='/usr/bin/vim'
alias xdd='rm ~/Library/Developer/Xcode/DerivedData/*'
alias cdd='cd ~/repos/ditto/'
alias readme='code README.md'
alias gemfile='code Gemfile'
alias makefile='code Makefile'
alias la='ls -alF'
alias ll='ls -lF'
alias brewup='brew update && brew upgrade && brew cleanup && brew doctor'
alias cat=bat
alias listen='sudo lsof -i -P | grep "LISTEN"'
alias cp='cp -i'
alias mv='mv -i'
alias dcom='docker-compose'
alias dbe='docker-compose run app bundle exec'
alias dbi='docker-compose run app bundle install'
alias rm='trash'

## ditto
alias cditto='cd ~/repos/ditto'
alias cdemo='cd ~/repos/ditto-organization/demo-apps'

## git alias
alias gcurrent="git branch | grep -e '^\\* ' | sed -e 's/^\\* //g'"
alias gs='git status -sb'
alias gaa='git add -A'
alias gb='git branch -a'
alias gbd='git branch -D'
alias gc='git commit -m'
alias gcae='git commit --allow-empty -m Initial'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gm='git checkout main'
alias gcod='git checkout develop'
alias grh='git clean -df && git reset --hard'
alias grhh='git reset --hard HEAD^ && git clean -df'
alias gd='git diff'
alias gl='git pull && git fetch --prune && gbm'
alias gbm="git branch --merged | grep -vE '^\*|master|develop' | xargs -I '{}' git branch -d '{}'"
alias glf="git fetch && git reset --hard origin/(gcurrent)"
alias glo='git log --oneline --decorate --graph'
alias gpf='git push --force-with-lease'
alias gp='git push -u origin HEAD'
alias gf='git fetch --prune'
alias grm='git rebase master'
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
alias dcr='docker-compose run app rails'

## node alias
alias npm-clean='rm -rf ./node_modules; npm cache clean; npm install'


## import other zsh files
# ZSH_DIR="${HOME}/.zsh"
# if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
#     for file in ${ZSH_DIR}/**/*.zsh; do
#         [ -r $file ] && source $file
#     done
# fi

# Fig post block. Keep at the bottom of this file.
# [[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Flutter
export PATH=~/flutter/bin:$PATH

# Others
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=$PATH:/path/to/android/sdk/tools/bin
