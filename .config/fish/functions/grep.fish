function grep -d "use rg instead of grep"
    if command --query rg
        rg $argv
    else
        grep $argv
    end
end
