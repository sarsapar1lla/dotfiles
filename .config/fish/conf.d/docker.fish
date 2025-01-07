if command --query docker
    abbr drc "docker container ls -qa | xargs docker container rm"
    abbr dri "docker image ls -qa | xargs docker image rm"
end
