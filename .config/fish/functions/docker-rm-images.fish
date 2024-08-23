function docker-rm-images -d "remove all docker images"
    for i in (docker image ls -qa)
        docker image rm $i
    end
end

abbr dri docker-remove-images
