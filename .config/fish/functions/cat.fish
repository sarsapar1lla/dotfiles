function cat -d "use bat instead of cat"
    if command --query bat
        bat --theme Catppuccin-mocha $argv
    else
        echo "'bat' is not installed on path. Falling back to 'cat'"
        command cat $argv
    end
end
