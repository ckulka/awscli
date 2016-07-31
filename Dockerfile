# Set the base image
FROM python:2

# File Author / Maintainer
MAINTAINER Cyrill Kulka


## BEGIN INSTALLATION

# Install the AWS Cli
RUN pip install awscli

# Install the AWS ECS Cli
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest &&\
	chmod +x /usr/local/bin/ecs-cli

# Add convenience scripts
COPY files/* /opt/
