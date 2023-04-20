#!/bin/bash

docker run -d --name nexus \
           -p 18081:8081 \
           -v /tn_devops/nexus:/opt/nexus/sonatype-work \
           --restart unless-stopped \
           nexus