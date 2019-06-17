#!/bin/sh

rsync -azvh --info=progress2 /mnt/data /mnt/backup >> /var/log/backup.log