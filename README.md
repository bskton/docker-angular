# Docker image for application development with Angular

## Building

### Build a docker image
```
sudo docker build -t bskton/angular .
```

### Log in to the Docker public registry
```
sudo docker login
```

### Upload the image to the repository
```
sudo docker push bskton/angular
```

### Using

#### Create a new application
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) \
bskton/angular ng new my-app
```

#### Run application in development environment
```
sudo docker run --rm -it -v $PWD:/app -p 4200:4200 -p 9876:9876 \
-u $(id -u):$(id -g) bskton/angular
```

#### Install node packages for the application
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) \
bskton/angular npm install
```
