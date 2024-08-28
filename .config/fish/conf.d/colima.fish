if command --query colima
    set -gx DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
    set -gx TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
else
    echo "'colima' is not installed on path"
end
