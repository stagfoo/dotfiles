function killall-docker
docker stop (docker ps -aq);
docker images --quiet --filter=dangling=true | xargs docker rmi -f;
docker container prune;
end
