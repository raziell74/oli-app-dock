# OLI Dev container restart

docker-compose --profile '*' stop
./start.sh "$@"
