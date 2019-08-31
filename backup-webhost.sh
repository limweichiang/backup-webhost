#!/bin/sh

# Web Host Company
WEBHOST_CO='webhostcompanyname'

# Web Host Server SSH information
WEBHOST_SSH_USER='username'
WEBHOST_SSH_HOST='192.168.1.80'

# Web Host Server DB Credentials and target DB to backup
WEBHOST_DB_USER='mysqluser'
WEBHOST_DB_PASSWD='mysqlpasswd'
WEBHOST_DB_TARGET='mysqlblogdb'

# Where to keep the backup archives
BACKUP_DST_DIR="$HOME/backup/webhost/"

# Execute Ansible Playbook to backup Web Host files and DB
ansible-playbook -u $WEBHOST_SSH_USER \
   --extra-vars "webhost_co=$WEBHOST_CO webhost_ssh_host=$WEBHOST_SSH_HOST" \
   --extra-vars "webhost_db_user=$WEBHOST_DB_USER webhost_db_passwd=$WEBHOST_DB_PASSWD webhost_db_target=$WEBHOST_DB_TARGET" \
   --extra-vars "backup_dst_dir=$BACKUP_DST_DIR" \
   backup-webhost.yaml 

# Find and remove backups older than  180 days
find $BACKUP_DST_DIR -type f -name "$WEBHOST_CO_$WEBHOST_SSH_HOST_backup_*.tar.gz" -mtime +180 -delete
