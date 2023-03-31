# OLI Dev container restart

docker-compose --profile '*' stop
docker system prune
docker volume prune
docker-compose "$@" up --build
