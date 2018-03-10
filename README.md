# Docker image for application development with Angular

## Build
```
sudo docker build -t bskton/angular .
```

## Create a new application
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular ng new my-app
```

## Install node packages for the application
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular npm install
```

## Run application in development environment
```
sudo docker run --rm -it -v $PWD:/app -p 4200:4200 -p 9876:9876 -u $(id -u):$(id -g) bskton/angular
```
