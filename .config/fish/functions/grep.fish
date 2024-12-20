function grep -d "use rg instead of grep"
    if command --query rg
        rg $argv
    else
        echo "'rg' is not installed on path. Falling back to 'grep'"
        grep $argv
    end
end
