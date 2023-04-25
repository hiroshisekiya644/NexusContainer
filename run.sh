#!/bin/bash

docker run -d \
           -p 8081:8081 \
           --name nexus \
           -v /tn_devops/nexus:/opt/nexus/sonatype-work \
           --restart unless-stopped \
           nexus
