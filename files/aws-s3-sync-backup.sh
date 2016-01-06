#!/bin/bash

aws s3 sync $BACKUP_LOCAL $BACKUP_S3 --delete
