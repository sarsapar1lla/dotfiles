if command --query starship
    starship init fish | source
    enable_transience
else
    echo "'starship' is not installed on path"
end
