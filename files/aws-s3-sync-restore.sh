#!/bin/bash

aws s3 sync $BACKUP_S3 $BACKUP_LOCAL --delete

if env | grep -q ^BACKUP_CHOWN=
then
	chown -R $BACKUP_CHOWN $BACKUP_LOCAL
fi
