# docker-tomcat-9

Dockerfile for my arthurpicht/tomcat-9 image, based on
[arthurpicht/adoptopenjdk-11](https://github.com/arthurpicht/docker-adoptOpenJDK-11), based on
[arthurpicht/debian-12](https://github.com/arthurpicht/docker-debian-12).

## Build image locally

    docker build -t arthurpicht/debian-12:latest https://github.com/arthurpicht/docker-debian-12.git
    docker build -t arthurpicht/adoptopenjdk-17:latest https://github.com/arthurpicht/docker-adoptOpenJDK-17.git#develop 
    docker build -t arthurpicht/tomcat-9:latest https://github.com/arthurpicht/docker-tomcat-9.git

## Current version level

* 2023-09-28: Tomcat 9.0.80, AdoptOpenJKD 17.0.8.1+1, Debian 12.1
* 2021-06-29: Tomcat 9.0.48, AdoptOpenJDK 11.0.11+9, Debain 10.10
* 2021-05-21: Tomcat 9.0.46, AdoptOpenJDK 11.0.11+9, Debian 10.9


