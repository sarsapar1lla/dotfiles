if command --query docker
    abbr drc "docker container rm $(docker container ls -qa)"
    abbr dri "docker image rm $(docker image ls -qa)"
end
