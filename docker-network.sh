docker stop $(docker ps -a -q)

docker rm $(docker ps -a -q)

docker network create --driver bridge blog-net
docker network inspect blog-net
docker 