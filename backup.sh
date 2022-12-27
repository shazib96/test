#!/bin/bash

DATE=$(date +%Y-%m-%d-%H%M%S)
BACKUP_DIR="/home/backup"
SOURCE="var/lib/jenkins/workspace/test-deployment/*"
tar -cvzpf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE
