oli_npm_install() {
  echo "Installing node packages for \$0..."
  cd $1
  npm install
  echo "Setting up pre-commit hooks..."
  npx husky install
  npx husky add .husky/pre-commit "exec >/dev/tty 2>&1"
  npx husky add .husky/pre-commit "npx lint-staged --verbose"
  echo "Installation complete!\n\n"
  cd $2
}

oli_config_submodule() {
  echo "Configuring Submodule \$0..."
  git config submodule.$0.branch master
  git config submodule.$0.ignore dirty
  echo "Submodule \$0 successfully configured\n\n"
}

# OLI Dev Environment Setup

echo "Running initial set up of the OLI development environment"
echo "This process will take several minutes to complete, please be patient"
echo "\n\n"

# Pull repository submodules
echo "Pulling Oli Repositories as Submodules..."
cd ../../
git submodule update --init --recursive
echo "Pull successful!\n\n"

oli_config_submodule backend/ai-assist
oli_config_submodule backend/inspections
oli_config_submodule backend/core
oli_config_submodule frontend/marketing
oli_config_submodule frontend/platform
oli_config_submodule mobile/inspector
oli_config_submodule mobile/home-owner

# Npm Installs
echo "------------ Staring npm package installation ------------\n\n"

oli_npm_install backend-ai-assist ./backend/ai-assist ../../
oli_npm_install backend-core ./backend/core ../../
oli_npm_install backend-inspections ./backend/inspections ../../

oli_npm_install frontend-marketing ./frontend/marketing ../../
oli_npm_install frontend-platform ./frontend/platform ../../

oli_npm_install mobile-inspector-app ./mobile/inspector ../../
oli_npm_install mobile-home-owner-app ./mobile/home-owner ../../

echo "\nNode package installation successful!\n\n"

# Docker Container Builds
echo "Starting Docker Container build process..."

cd ../../docker/dev
docker-compose up --build
