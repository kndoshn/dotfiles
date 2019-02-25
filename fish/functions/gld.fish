function gld
    set target "develop"
    set current (git branch | grep '*' | sed 's/* //g')
    git checkout {$target} && git pull
    git checkout {$current}
end
