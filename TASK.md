# Run Nexus 

1) Write a `Containerfile` (`Dockerfile`) that containerizes the Nexus server. The binaries for Nexus server can be downloaded from [sonatype](https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz). The `Containerfile` must also:
   - Use a base image of `ubi8/ubi:8.7` and set an arbitrary maintainer.
   - Install the `java-1.8.0-openjdk-devel` package.
   - Define `NEXUS_HOME` environment variable to `/opt/nexus`
   - Copy and unpack downloaded Nexus bundle into `NEXUS_HOME` folder
   - Define exposed ports
   - Define default working directory to `NEXUS_HOME`
   - Define a volume mount point for the `/opt/nexus/sonatype-work` container directory
   - Define the command for starting Nexus server
   - Use all other best practices and security consideration you are aware of
2) Write a bash script that builds container image from the written Nexus Dockerfile.
3) Write a bash script that:
   - Starts the container from the Nexus image built in previous step
   - Sets the container name to nexus
   - Runs the container in background
   - Mounts the container folder `/opt/nexus/sonatype-work` to host filesystem under `/tn_devops/nexus` folder
   - Binds host port `18081` to the exposed port in container
   - Starts the container automatically with operating system
4) Write documentation as `README.md` file containing:
   - Short description of project
   - Steps to build and run your new image

# Guidance:

## Setup your account and repository
1. Setup GitHub account
2. Fork repository with assignment
3. Create your own branch
4. Checkout your repository
5. Add your mentor as member to your repository with role Maintainer

## Tech stack

This task is mostly technology-agnostic.
The candidate can use any language/framework to implement his or her solution.
All functional and non-functional requirements defined above need to be satisfied.
The solution will be tested in a Rocky Linux virtual machine.
