#!/usr/bin/env bash
cd /home/ubuntu/www/project/
source /home/ubuntu/www/project-venv/bin/activate
# supervisorctl -c /home/ec2-user/www/project/supervisor/default.conf stop all 2&>1 >/dev/null
# sudo unlink /tmp/supervisor.sock 2> /dev/null
sudo pkill supervisor*
