# OLI Dev container restart

docker-compose down
docker system prune
docker volume prune
docker-compose up --build
