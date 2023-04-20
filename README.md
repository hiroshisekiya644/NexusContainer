# NexusContainer

## Project task

You can find project task [here](TASK.md). The solution was tested in a Rocky 9.1 Linux virtual machine.

## Nexus Docker Image

This project provides a Dockerfile for building a Docker image of the Nexus server. The image is based on the ubi8/ubi:8.7 image and includes OpenJDK 1.8.0, which is required by Nexus. The image also defines several environment variables and exposed ports to make it easier to configure and run the Nexus server.

## Build Instructions

To build the Docker image, run the following command:

```
sudo sh build.sh
```
This will create a Docker image tagged as nexus using the Dockerfile in the current directory.


## Run Instructions

To start a container from the nexus image, run the following command:

```
sudo sh start.sh
```

This will start a container named nexus in the background, bind port 18081 on the host to port 8081 in the container, and mount the /tn_devops/nexus directory on the host to the /opt/nexus/sonatype-work directory in the container. The Nexus server will be available at http://localhost:18081.

## Login

Once the Nexus server is running, you can log in to it by navigating to http://localhost:18081 in your web browser and using the default credentials:
```
Username: admin
Password: admin123
```
Note that you should change the default password as soon as possible after logging in.
