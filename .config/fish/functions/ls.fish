function ls -d "use eza instead of ls"
    if command --query eza
        eza $argv
    else
        echo "'eza' is not installed on path. Falling back to 'ls'"
        command ls $argv
    end
end
