# OLI App Dock
This repository holds docker compositions and deployment files as well as convient shell scripts to make set up and deployment easier.
Several useful shell scripts are also provided that will make managing docker and git sub-modules easier.

## Prerequisites
Make sure you have your GitHub account setup with an SSH key and have been added to all the necessary OLI repositories.⋅⋅
Also make sure you've installed all of the following software on your development machine:

* Git
* Docker
* Node Version Manager `nvm`
  - Because we strickly control the version of node we are using NVM to make sure node always matches our image versions. 
  - [Node Version Manager Install Guide](https://www.freecodecamp.org/news/node-version-manager-nvm-install-guide/)
* Node.js
  - In a terminal run `nvm install 19.8.1`

It is important that your node version matches the same version that the Docker containers are using that way everything matches up when doing npm calls.

As of the writing of this document we are using node v19.8.1 for all of our code bases. Each repo has the version to use specified in an .nvmrc file, if the version is ever updated node will notify you when you try to start or install packages that there's a version missmatch and you'll need to use nvm to install the version required by the code base.

## Developer Setup

1. Clone the OLI App Main repository _(that's this one the oli-app-dock repo)_
   - Clone oli-app-dock into a new folder named 'OLI' on your development machine. 
   - Command: `git clone git@github.com:raziell74/oli-app-dock.git OLI`
2. Run the dev setup shell script
   - In a terminal navigate to the newly created OLI directory and run `.\dev-setup.sh`.
   - The script will pull all of the OLI sub-module repositories for the app and initialize each of them by running an `npm install` for each respective repository.
   - This process can take awhile so please wait for it to fully complete.
3. Launch the docker containers
   - In a terminal navigate to the `<containing directory>\OLI\dev` directory and run `docker-compose up --build`.
   - After the first time bringing the containers up you can leave off the '--build' from the command to bring up the containers quicker.
   - You can also use the `restart.sh` or `start.sh` scripts that are explained lower in this document.

## Using Docker
Due to the micro-service architecture there are a large number of containers, as such the compose yaml defines profiles for each container to help group and catagorize them based off their parts of the application stack.

Docker Compose profiles allows you to bring up and down specific groups of containers that are assigned to profiles. You can also bring up and down based off of multiple profiles at once.

### Running specific profiles

You can bring up only specific containers based on what you are developing at the time using Docker Compose profiles.
As an example you can bring up only the containers for the inspector mobile app by running `docker-compose --profile inspector up`.

You can also run multiple profiles at a time. For instance if you are wanting to run the inspector as well as the core web portal to make sure they interact together correctly `docker-compose --profile inspector --profile core up`

Available OLI Profiles:
* `core` Containers: mysql, mongo, redis, backend-core, inspection-backend, ai-assistant-backend, web-platform
* `marketing` Containers: mysql, backend-core, marketing
* `inspector` Containers: mysql, mongo, redis, backend-core, inspection-backend, ai-assistant-backend, inspector-app
* `home-owner` Containers: mysql, mongo, redis, backend-core, inspection-backend, ai-assistant-backend, home-owner-app
* `ai` Containers: redis, ai-assistant-backend

Please review the `docker-compose.yml` for 100% up to date information profile assignment.

_<sub>Documentation Last Updated 3-27-2023</sub>_

## Shell Scripts

There are seperate scripts for both dev and prod. You can find each in their cooresponding directory.
It is recommended to create an alias in your terminal for each of these for ease of access.

#### Start `.\docker\dev\start.sh <docker-compose args>`
Runs docker-compose up to start containers
Anything you put after the script is passed through to docker-compose as arguments. 
This way you can specify which profiles or containers you'd like to start or if you'd like to run in detached mode with `-d`.

#### Stop `.\docker\dev\start.sh <docker-compose args>`
Runs docker-compose down to stop containers

Anything you put after the script is passed through to docker-compose as arguments. 
This way you can specify which profiles or containers you'd like to stop.

#### Restart `.\docker\dev\restart.sh <docker-compose args>`
Short cut to run the Stop script followed by the Start script.

Anything you put after the script is passed through to the stop and start scripts to be used in their respective docker-compose scripts

#### Restart Prune `.\docker\dev\restart-prune.sh`
This is a debugging script in case there are any major issues and you need to start the app completely fresh. 
Meant as a complete reset of the entire stack this process takes awhile to complete. 

1. Stops all running containers 
2. Runs `docker system prune` to remove all of the stopped images 
3. Runs `docker volume prune` to remove volume data for databases
4. Deletes `node_modules` in each sub-module repository
5. Runs `npm install` to rebuild each repo's package modules from scratch
6. Finally it will run a `docker-compose up --build` to rebuild all docker containers

#### Pull All `git pull-all` *dev only*
Not a shell script but this is set as a git alias for the `oli-app-dock` repository.
This will pull updates for ALL the sub-module repositories. Letting you make sure you have the latest code from every repo with one command.
