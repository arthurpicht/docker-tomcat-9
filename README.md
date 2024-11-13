# docker-tomcat-9

Dockerfile for my arthurpicht/tomcat-9 image, based on
[arthurpicht/adoptopenjdk-21](https://github.com/arthurpicht/docker-adoptOpenJDK-21), based on
[arthurpicht/debian-12](https://github.com/arthurpicht/docker-debian-12).

## Build image locally

    docker build --pull --no-cache -t arthurpicht/debian-12:latest https://github.com/arthurpicht/docker-debian-12.git#develop
    docker build --no-cache -t arthurpicht/adoptopenjdk-21:latest https://github.com/arthurpicht/docker-adoptOpenJDK-21.git#develop 
    docker build --no-cache -t arthurpicht/tomcat-9:latest https://github.com/arthurpicht/docker-tomcat-9.git

## Current version level

* 2024-11-13: Tomcat 9.0.97, AdoptOpenJDK 21.0.5+11, Debain 12.8
* 2024-06-13: Tomcat 9.0.89, AdoptOpenJDK 21.0.3+9, Debian 12.5
* 2024-04-23: Tomcat 9.0.88, AdoptOpenJDK 21.0.3+9, Debian 12.5
* 2023-09-28: Tomcat 9.0.80, AdoptOpenJDK 17.0.8.1+1, Debian 12.1
* 2021-06-29: Tomcat 9.0.48, AdoptOpenJDK 11.0.11+9, Debain 10.10
* 2021-05-21: Tomcat 9.0.46, AdoptOpenJDK 11.0.11+9, Debian 10.9



