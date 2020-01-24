## commands work individually but clean.sh doesn't execute well
docker stop flask;
docker rm $(docker ps -a -q -f status=exited)