# Midas Container App
A template for microfrontend used for Midas project. The template contains configured setup with Single SPA and Angular.
Project is set to work with Docker containers.

# Environment used
- JetBrains Webstorm
- Docker (with nginx server)
- Node 19
- NPM

## Tech stack used
- TypeScript
- Single SPA
- Jest
- 
## Getting started
To run a project, do the following:
1. Install [Node.js with NPM](https://nodejs.org/en/)
2. Install [Docker](https://www.docker.com/)
3. Clone the project
4. Install the dependencies
  ```
  npm run install
  ```
5. Run `docker-compose build && docker-compose up` inside the root folder of the project

## Microfrontend configuration

### Server address and port configuration
To change a server address and port for application you need to do the following:

#### DEV Config
1. In `package.json` change the port number in `start` command
2. In `import_maps/dev.json` add proper microfrontend addresses

#### PROD Config
1. In `import_maps/prod.json` add proper microfrontend addresses