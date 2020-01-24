docker stop flask;
docker rm $(docker ps -a -q -f status=exited)