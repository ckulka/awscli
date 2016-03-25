This repository provides an image for the AWS Cli.

For more details, see https://github.com/ckulka/rpi-awscli

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
