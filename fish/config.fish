# anyenv
eval (anyenv init - | source)

# alias
alias rm rmtrash
alias vi '/usr/bin/vim'
alias xdd 'rm ~/Library/Developer/Xcode/DerivedData/*'
alias memo 'vim ~/memo.md'
alias om 'open ~/memo.md'
alias fishconfig 'vim ~/.config/fish/config.fish'
alias sourceconfig 'source ~/.config/fish/config.fish'
alias cdd 'cd ~/Desktop'
alias readme 'vim README.md'
alias gemfile 'vim Gemfile'
alias la 'ls -alF'
alias ll 'ls -lF'
alias gr grep
alias gr 'grep -i'
alias free_memory 'echo \'(Before)\'; vm_stat | grep free; sudo purge; echo \'(After)\'; vm_stat | grep free'
alias brewup 'brew update && brew upgrade && brew cask upgrade && brew cleanup && brew doctor'
alias cat ccat

## git alias
alias git hub
alias g "cd (ghq root)/(ghq list | fzf)"
alias gg 'ghq get'
alias gs 'git status -sb'
alias gaa 'git add -A'
alias gb 'git branch -a'
alias gbd 'git branch -D'
alias gc 'git commit -m'
alias gcae 'git commit --allow-empty -m Initial'
alias gco 'git checkout'
alias gcob 'git checkout -b'
alias gm 'git checkout master'
alias grh 'git reset --hard && git clean -df'
alias grhh 'git reset --hard HEAD^ && git clean -df'
alias gd 'git diff'
alias gl 'git pull && git fetch --prune && gbm'
alias glo 'git log --oneline --decorate --graph'
alias gp 'git push'
alias gpf 'git push -f'
alias gpu 'git push -u origin HEAD'
alias gf 'git fetch --prune'
alias grm 'git rebase master'

alias h "hub browse (ghq list | fzf | cut -d "/" -f 2,3)"
alias hpl 'hub pr list -b master -f "%sC%U%>(4)%Creset- %t %l%n"'
alias hpr "hub pull-request -p -m"
alias hb 'hub browse'
alias hco "hub checkout"
alias hcom 'hub compare'
alias hi 'hub issue'

## ios alias
alias podfile 'vim Podfile'
alias podin 'pod install'
alias podup 'pod update'
alias cartfile 'vim Cartfile'
alias cartboot 'carthage bootstrap --platform iOS --cache-builds'
alias cartup 'carthage update --platform iOS --cache-builds'
alias gbm "git branch --merged | grep -vE '^\*|master|develop' | xargs -I '{}' git branch -d '{}'"

## bundle alias
alias b bundle
alias be 'bundle exec'
alias bi 'bundle install'
alias bu 'bundle update'
alias bl 'bundle list'

## rails alias
alias rails 'echo \"Use \'bundle exec rails\'\"'
alias rs 'be rails s'
alias rn 'be rails new'
alias rdc 'be rails db:create'
alias rdm 'be rails db:migrate'
alias rdr 'be rails db:rollback'
alias rds 'be rails db:seed'
alias rdd 'be rails db:drop'
alias rr 'be rails routes'
alias rbp 'be rails_best_practices'

## node alias
alias npm-clean 'rm -rf ./node_modules; npm cache clean; npm install'
