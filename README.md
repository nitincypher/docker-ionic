# docker-ionic
An image containing ionic-angular

- Ionic 3
- Cordova
- Ionic Angular
- node & npm
- Java
- Android SDK
- Gradle
- Docker Garbage Collection to remove Containers that exited more than an hour ago

----

### Pull from Docker Hub
```
docker pull nitincypher/docker-ionic:latest
```

### Build from GitHub Repository
```
docker build -t nitincypher/docker-ionic
```

### Run image
```
docker run -it nitincypher/docker-ionic bash
```

### Use as base image
```Dockerfile
FROM nitincypher/docker-ionic:latest
```

-----

### Inspired by
https://github.com/marcomaisel/docker-ionic

