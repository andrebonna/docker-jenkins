# docker-jenkins
Jenkins image with docker installed.

#### Usage ####
```
docker build --tag docker-jenkins .
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -p 8888:8080 docker-jenkins
```
You should always run with -v in order to bind the outer docker socket to the internal docker of your container. This should avoid the Docker-in-Docker effect.

#### Docker Compose
```
docker-compose up -d
```

#### Jenkins Plugins

- Docker plugin
- HTML Publisher plugin
- JUnit Plugin
- Pipeline: AWS Steps

#### Configure Jenkins

Follow this tutorial: https://devopscube.com/docker-containers-as-build-slaves-jenkins/

Additional Container Configuration:
- Make sure that the container exposed SSH port matches with SSH connect.
- Link volumes
    - /var/run/docker.sock:/var/run/docker.sock

#### Slaves

Jenkins slave machines with environment differences.

- Node 7 Environment
    ```
    docker build --tag jenkins-slave-node slaves/node
    ```
