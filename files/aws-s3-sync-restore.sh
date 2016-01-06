#!/bin/bash

aws s3 sync $BACKUP_S3 $BACKUP_LOCAL --delete
