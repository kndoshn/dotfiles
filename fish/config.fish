# anyenv
eval (anyenv init - | source)

# alias
alias rm rmtrash
alias vi '/usr/bin/vim'
alias xdd 'rm ~/Library/Developer/Xcode/DerivedData/*'
alias memo 'vim ~/memo.md'
alias om 'open ~/memo.md'
alias fishconfig 'code ~/.config/fish/config.fish'
alias sourceconfig 'source ~/.config/fish/config.fish'
alias cdd 'cd ~/Desktop'
alias readme 'code README.md'
alias gemfile 'code Gemfile'
alias makefile 'code Makefile'
alias la 'ls -alF'
alias ll 'ls -lF'
alias gr grep
alias gr 'grep -i'
alias free_memory 'echo \'(Before)\'; vm_stat | grep free; sudo purge; echo \'(After)\'; vm_stat | grep free'
alias brewup 'brew update && brew upgrade && brew cleanup && brew doctor'
alias cat bat
alias listen 'sudo lsof -i -P | grep "LISTEN"'
alias cp='cp -i'
alias mv='mv -i'
alias cditto='cd ~/ghq/github.com/getditto/ditto'

## git alias
alias git hub
alias gcurrent "git branch | grep -e '^\\* ' | sed -e 's/^\\* //g'"
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
alias gcod 'git checkout develop'
alias grh 'git clean -df && git reset --hard'
alias grhh 'git reset --hard HEAD^ && git clean -df'
alias gd 'git diff'
alias gl 'git pull && git fetch --prune && gbm'
alias glf "git fetch && git reset --hard origin/(gcurrent)"
alias glo 'git log --oneline --decorate --graph'
alias gpf 'git push --force-with-lease'
alias gp 'git push -u origin HEAD'
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

## flutter alias
alias f 'flutter'
alias frp 'flutter run --profile'
alias fgen 'flutter pub run build_runner build'

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

## path
set -g fish_user_paths "/usr/local/opt/bison/bin" $fish_user_paths
set MECAB_PATH "/usr/lib/libmecab.so.2" $PATH
set PATH ~/development/flutter/bin $PATH
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
export PATH="$HOME/.cargo/bin:$PATH"
