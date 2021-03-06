#! /bin/zsh
# Ariane Release Manager
# Ariane Release Tree Library
# DAO Library
#
# Copyright (C) 2015 echinopsii
# Author: Stan Renia
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

help() {
	echo "Usage: $0 {start | passwd | add_user | stop} [options]"
	echo ""
	echo "start options: \n\t -c <config file path> \n\t default config file path is /etc/ariane_relmgr/confsrv.json"
	echo "password options: \n\t -u <username> -p <password>"
	echo "add_user options: \n\t -u <username> -p <password>"
}

which git > /dev/null
if [ $? -ne 0 ]; then
       if [ "${GIT_HOME}" = "" ]; then
               echo "git is not defined in path and not GIT_HOME is not defined. Define your GIT_HOME in your env before starting server."
               exit -1
       else
               export PATH=$GIT_HOME/bin:$PATH
       fi
fi

which mvn > /dev/null
if [ $? -ne 0 ]; then
       if [ "${MAVEN_HOME}" = "" ]; then
               echo "mvn is not definied in path and MAVEN_HOME is not defined. Define your MAVEN_HOME in your env before starting server."
               exit -1
       else
               export PATH=$MAVEN_HOME/bin:$PATH
       fi
fi

which java > /dev/null
if [ $? -ne 0 ]; then
       if [ "${JAVA_HOME}" = "" ]; then
               echo "java is not defined in path and JAVA_HOME is not defined. Define your JAVA_HOME in your env before starting server."
               exit -1
       else
               export PATH=$JAVA_HOME/bin:$PATH
       fi
fi

case "$1" in
    start)
        echo "Starting Ariane Release Manager"
        python3 ariane_relsrv/server/__main__.py relmgr $2 $3 &
        echo $! > /tmp/ariane_relmgr.pid
        ;;
    stop)
        if [ -f /tmp/ariane_relmgr.pid ]; then
            echo "Stopping Ariane Release Manager"
            PID=`cat /tmp/ariane_relmgr.pid`
            pkill -TERM -P $PID
            kill $PID
            rm /tmp/ariane_relmgr.pid
        else
            echo "Ariane Release Manager is not started."
        fi
        ;;
    passwd)
        echo "New password for user"
        python3 ariane_relsrv/server/__main__.py passwd $2 $3 $4 $5
        ;;
    add_user)
        echo "Adding user"
        python3 ariane_relsrv/server/__main__.py add_user $2 $3 $4 $5
        ;;
    *)
	help $0
        exit 1
        ;;
esac
