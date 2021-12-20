# Base


Time passes. 
VS Code now has much more advanced support for using docker images for dev and testing


Changing some items from docker-compose to commands to setup apps:

docker command to replace docker-compose.setup
`docker run --rm -v ${pwd}:/usr/src/service/ -w /usr/src/service  node npx create-react-app APP-NAME`
