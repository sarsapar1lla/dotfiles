function ls -d "use eza instead of ls"
    if command --query eza
        eza $argv
    else
        command ls $argv
    end
end
