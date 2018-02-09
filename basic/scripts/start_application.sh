#!/usr/bin/env bash

cd /home/ubuntu/www/project/
source /home/ubuntu/www/project-venv/bin/activate
echo yes | DJANGO_SETTINGS_MODULE=basic.settings /home/ubuntu/www/project/manage.py collectstatic
DJANGO_SETTINGS_MODULE=basic.settings SECRET_KEY=your-secret-here JWT_SECRET_KEY=your-jwt-secret-here PSQL_DB_NAME=your-db-name-here PSQL_DB_USER=your-db-user-here PSQL_DB_PASSWD=your-db-password-here PSQL_HOST=your-aws-psql-rds-server-dns-here PSQL_PORT=5432 supervisord -c /home/ubuntu/www/project/supervisor/default.conf