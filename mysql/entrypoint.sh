#!/bin/bash
if [ -f /tmp/mysql_root_password.txt ]; then
    PASSWORD=$(cat /tmp/mysql_root_password.txt)
    echo "Accessed root password"
else
    echo "Password file not found"
fi

#Making it as available in environment
export MYSQL_ROOT_PASSWORD=$PASSWORD
rm -rf /tmp/mysql_root_password.txt
exec /entrypoint.sh mysqld