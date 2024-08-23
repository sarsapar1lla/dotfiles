function ls -d "use eza instead of ls"
    if command --query eza
        eza $argv
    else
        command ls $argv
    end
end

function ll -d "alias eza -la"
    eza -la --icons $argv
end
