if command --query colima
    set -gx DOCKER_CONTEXT colima
    set -gx TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
else
    echo "'colima' is not installed on path"
end
