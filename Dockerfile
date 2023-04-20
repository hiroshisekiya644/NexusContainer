# Use the UBI 8 base image
FROM registry.access.redhat.com/ubi8/ubi:8.7

# Set an arbitrary maintainer label
LABEL maintainer="karlo.hubak@fer.hr"

# Install java-1.8.0-openjdk-devel package
RUN yum -y install java-1.8.0-openjdk-devel curl tar gzip && \
    yum clean all

# Set the NEXUS_HOME environment variable to /opt/nexus
ENV NEXUS_HOME /opt/nexus

# Create NEXUS_HOME directory
RUN mkdir -p ${NEXUS_HOME}

# Define default working directory to NEXUS_HOME
WORKDIR ${NEXUS_HOME}

# Download the Nexus bundle and verify the SHA-512 checksum
RUN curl -LO https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz && \
    curl -LO https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz.sha512 && \
    tar -xzf nexus-3.37.3-02-unix.tar.gz

# Expose the default port for Nexus
EXPOSE 8081

# Define a volume mount point for the /opt/nexus/sonatype-work container directory
VOLUME ${NEXUS_HOME}/sonatype-work

# Define the command for starting Nexus server
CMD ["bin/nexus", "run"]


# sha512sum -c nexus-3.37.3-02-unix.tar.gz.sha512 iz nekog razloga ne prepoznaje dobar format