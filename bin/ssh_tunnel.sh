#!/bin/bash
#
# Create persistent tunnel to some host
# -------------------------------------

if [ -z "$1" ]; then
    echo "Please state hostname or IP as first parameter."
    exit 1
elif [ -z "$2" ]; then
    echo "Please state port number as second parameter."
    exit 1
else
    HOST=$1
    PORT=$2
fi

while true; do
<<<<<<< HEAD
	echo "$(date +'%F %H:%M:%S') Creating tunnel from localhost to $HOST:$PORT"	>> ~/ssh_tunnel.log
	ssh -fNR $PORT:localhost:22 $HOST	2>&1 >> ~/ssh_tunnel.log
	echo "$(date +'%F %H:%M:%S') Exited tunnel from localhost to $HOST:$PORT"	>> ~/ssh_tunnel.log
=======
    echo "$(date +'%F %H:%M:%S') Creating tunnel from localhost to $HOST:$PORT"   >> ~/ssh_tunnel.log
    ssh -AX -R $PORT:localhost:22 $HOST -nN                                  2>&1 >> ~/ssh_tunnel.log
    echo "$(date +'%F %H:%M:%S') Exited tunnel from localhost to $HOST:$PORT"     >> ~/ssh_tunnel.log
>>>>>>> 605b216482c3e1267ed563a338a3b4fdca8b49d1
done
