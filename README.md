# Hello 
another playground to try out new fancy tools and stuff

## changelog

### 0.1.2
run hello app as non-root-user in docker image

### 0.1.1 
maven profile for docker image creation (with fabric8 maven plugin)  
* build the current container image
```bash
mvn package -P buildDockerContainer
```

* build, then start the container and run a healthcheck to make sure the container build worked and the app starts
```bash
mvn verify -P buildDockerContainer -Ddocker.ports.1=8080:8080
```
