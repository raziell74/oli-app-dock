# OLI Dev Environment Setup

echo "Running initial set up of the OLI development environment. This will take several minutes."

# Pull repository submodules
echo "Pulling Repository Sub-Modules..."
cd ../../
git pull-all
echo "Pull successful!"

# Npm Installs
echo "Installing backend node packages..."
cd ./backend/ai-assist
npm install
cd ../core
npm install
cd ../inspections
npm install

cd ../../frontend/marketing
npm install
cd ../platform
npm install

cd ../../mobile/home-owner
npm install
cd ../inspector
npm install
echo "Node Packages install successful"

# Docker Container Builds
echo "Building docker containers..."
cd ../../docker/dev
docker-compose up --build
