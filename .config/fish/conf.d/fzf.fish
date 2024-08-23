if command --query fzf
    fzf --fish | source
else
    echo "'fzf' is not installed on path"
end
