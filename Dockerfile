# Set the base image
FROM python:2-alpine

# File Author / Maintainer
MAINTAINER Cyrill Kulka


## BEGIN INSTALLATION

# Install the AWS Cli
RUN pip install awscli

# Add convenience scripts
COPY files/* /opt/
