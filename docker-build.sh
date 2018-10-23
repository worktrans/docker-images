#!/bin/bash

docker build -t worktrans/ubuntu:18.04 ubuntu/bionic/ \
&& docker build -t worktrans/java:8-jre java/8-jre/ \
&& docker build -t worktrans/tomcat:8.5-jre-8 tomcat/8.5/jre-8/

docker images | grep 'worktrans'