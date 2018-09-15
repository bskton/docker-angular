# Docker image for application development with Angular

## Building

### Build a docker image
```
docker build -t bskton/angular:6.1.0 .
```

### Log in to the Docker public registry
```
docker login
```

### Upload the image to the repository
```
docker push bskton/angular:6.1.0
```

### Using

#### Create a new application
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular:6.1.0 \
ng new my-app
```
Switch to the project directory
```
cd my-app
```
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular:6.1.0 \
git config user.email "your@example.mail"
```
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular:6.1.0 \
git config user.name "Your Name"
```
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular:6.1.0 \
npm install
```

#### Run application in development environment
```
docker run --rm -it -v $PWD:/app -p 4200:4200 -p 9876:9876 \
-u $(id -u):$(id -g) bskton/angular:6.1.0
```

#### Install node packages for the application
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/angular:6.1.0 \
npm install
```
