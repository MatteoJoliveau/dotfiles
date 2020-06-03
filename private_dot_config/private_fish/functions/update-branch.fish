function update-branch --description='Update Git Branches'
    set help "Update Branch - Copyright ©2018 Matteo Joliveau

Usage

update-branch --source \$SOURCE_BRANCH --target \$TARGET_BRANCH
"
   

    getopts $argv | while read -l key value
        switch $key
            case "source"
                set source $value
            case "target"
                set target $value
            case "h" "help"
                echo "$help"
                return 0
        end
    end

    if test -z $source
        set source "develop"
    end

    if test -z $target
        set target (git rev-parse --abbrev-ref HEAD)
    end

    git checkout $source
    git pull
    git checkout $target
    git merge --ff-only $source
end
