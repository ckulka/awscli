This repository provides an image for the AWS Cli.


## Supported tags

 - ```latest``` [(Dockerfile)](https://github.com/ckulka/awscli/blob/master/Dockerfile)
 - ```alpine``` [(Dockerfile)](https://github.com/ckulka/awscli/blob/master/Dockerfile.alpine)
 - ```zsh``` [(Dockerfile)](https://github.com/ckulka/awscli/blob/master/Dockerfile.zsh)

For more details, see https://github.com/ckulka/awscli


## Image Variants

###```ckulka/awscli:latest```

This images is based on ```python:2``` and adds the AWS Cli.

###```ckulka/awscli:alpine```

This image is based on ```python:2-alpine``` and adds the AWS Cli.

###```ckulka/awscli:zsh```

This image is based on ```ckulka/awscli:latest``` and adds ZSH & nano.


## Examples

To build or try any of the image variants yourself, have a look at the git repository and use the ```docker-compose.yml```.

```
docker-compose build zsh
docker-compose run --rm zsh

docker-compose build cli
docker-compose run --rm cli aws configure list

docker-compose build alpine
docker-compose run --rm alpine aws configure list
```

### Backup to AWS S3
Sample docker-compose file: docker-compose.example.yml

```
# Upload initial data to AWS S3
# Has to be done only once at the beginning
docker-compose run --rm backup sh /opt/aws-s3-sync-backup.sh

# Run the service(s)
docker-compose up

# On a regular basis, perform the backup
docker-compose run --rm backup sh /opt/aws-s3-sync-backup.sh
```

### AWS ECR Get Login
To get the AWS ECR login credentials, use the following command
```
docker run --rm -it \
	-e AWS_ACCESS_KEY_ID=MY_KEY_ID \
	-e AWS_SECRET_ACCESS_KEY=MY_KEY_SECRET \
	-e AWS_DEFAULT_REGION=us-east-1 \
	ckulka/awscli \
	aws ecr get-login
```
