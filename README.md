# docker-tomcat-9

Dockerfile for my [arthurpicht/tomcat-9](https://cloud.docker.com/repository/docker/arthurpicht/tomcat-9)
image, based on
[arthurpicht/adoptopenjdk-11](https://github.com/arthurpicht/docker-adoptOpenJDK-11),
based on
[arthurpicht/debian-10](https://github.com/arthurpicht/docker-debian-10).

## Build image locally

    docker build -t arthurpicht/debian-10:latest https://github.com/arthurpicht/docker-debian-10.git
    docker build -t arthurpicht/adoptopenjdk-11:latest https://github.com/arthurpicht/docker-adoptOpenJDK-11.git#develop 
    docker build -t arthurpicht/tomcat-9:latest https://github.com/arthurpicht/docker-tomcat-9.git

## Current version level

* 2021-05-21: Tomcat 9.0.46, AdoptOpenJDK 11.0.11+9, Debian 10.9
