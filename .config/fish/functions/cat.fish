function cat -d "use bat instead of cat"
    if command --query bat
        bat --theme Catppuccin-mocha $argv
    else
        command cat $argv
    end
end
