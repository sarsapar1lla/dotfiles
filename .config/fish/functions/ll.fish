function ll -d "alias eza -la"
    if command --query eza
        eza -la --icons $argv
    else
        echo "'eza' is not installed on path. Falling back to 'ls'"
        command ls -la $argv
    end
end
