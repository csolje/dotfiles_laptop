## Wake On LAN @ Calomel.org
## /tools/wol_poweron.sh

IP="10.0.0.3"
MAC="44:1e:a1:3b:78:66"
HOSTNAME="mojokvm.home"

count="0"
while [ $count -lt 3 ]
 do
  ping -nqc 3 -w 5 $IP > /dev/null && break
  /usr/sbin/arp -d $HOSTNAME
  /usr/sbin/arp -s $HOSTNAME $MAC
  sleep 3
  /usr/local/bin/wol -i $IP $MAC
  sleep 90
  ping -nqc 3 -w 5 $IP > /dev/null && break
  count=$[$count+1]
done
