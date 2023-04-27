# Use the UBI 8 base image
FROM registry.access.redhat.com/ubi8/ubi:8.7

# Expose the default port for Nexus
EXPOSE 8081

# Set an arbitrary maintainer label
LABEL maintainer="karlo.hubak@fer.hr"

# Install java-1.8.0-openjdk-devel package
RUN yum -y install java-1.8.0-openjdk-devel curl tar gzip && \
    yum clean all

# Set the environment variables to their respective values
ENV NEXUS_HOME=/opt/nexus \
	NEXUS_VERSION=/nexus-3.37.3-02 \
	TMP=/tmp

# Create NEXUS_HOME and TMP directory
RUN mkdir -p ${NEXUS_HOME} ${TMP}

# Define default working directory to TMP
WORKDIR ${TMP}

# Download the Nexus bundle and SHA-512 checksum
RUN curl -LO https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz && \
    curl -LO https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz.sha512 && \
    tar -xzf nexus-3.37.3-02-unix.tar.gz -C ${NEXUS_HOME} && \
    rm -rf ..${TMP}

# Define default working directory to NEXUS_HOME
WORKDIR ${NEXUS_HOME}

# Define a volume mount point for the /opt/nexus/sonatype-work container directory
VOLUME ./sonatype-work

# Add execute permissions for all users
RUN chmod a+x .${NEXUS_VERSION}/bin/nexus

# Define the command for starting Nexus server
CMD ["/opt/nexus/nexus-3.37.3-02/bin/nexus", "run"]


## RUN sha512sum -c nexus-3.37.3-02-unix.tar.gz.sha512 is not recognizing the correct format for
## some reason (ran before deleting and moving)
