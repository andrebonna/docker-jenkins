# docker-jenkins
Jenkins image with docker installed.

#### Usage ####
```
docker build --tag docker-jenkins .
docker run -v /var/run/docker.sock:/var/run/docker.sock andrebonna/docker-jenkins
```
You should always run with -v in order to bind the outer docker socket to the internal docker of your container. This should avoid the Docker-in-Docker effect.


#### Slaves

Jenkins slave machines with environment differences.

- Node 7 Environment
    ```
    docker build --tag jenkins-slave-node slaves/node
    ```
