# Introduction

This repository provides a customized Jenkins.

# Prerequisites

Host with OS Linux

To successfull build and run applicaition ,please instaall and start docker software on target host. Please refer to https://store.docker.com.

docker-compose tool. To learn more please refer to  https://docs.docker.com/compose/.

# Layout

The repository is broken up into two directories currently:

* *build* - contains Dockerfile to build a customized Jenkins image.
* *jobs* - contains configuration of Jenkin's jobs.
* *j-users* - contains Dockerfile and application to build support service which provides credentials to Jenkins.

Files:

* *docker-compose.yml* - YAML configuration file to build and run Jenkins software.


# Run
To start application please run 

docker-compose up -d

To see credentials of created users, please run

docker-compose logs 

# External resources

* [Docker](https://www.docker.com)
* [Compose tool](https://docs.docker.com/compose/)
* [GitHub docker-compose](https://github.com/docker/compose)
