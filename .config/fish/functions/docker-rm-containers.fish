function docker-rm-containers -d "remove all docker containers"
    for c in (docker container ls -qa)
        docker container rm $c
    end
end

abbr drc docker-rm-containers
