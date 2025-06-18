#!/bin/bash
docker build -t custom-jenkins -f Dockerfile.jenkins .
docker run -d --name jenkins   -p 8080:8080 -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   custom-jenkins