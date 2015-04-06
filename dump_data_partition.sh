#!/bin/sh
SSHOPTS="-p 2222 -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null"

UDID=`ssh $SSHOPTS root@localhost "./device_infos udid"`

if [ "$UDID" == "" ]; then
    exit
fi

echo "Device UDID : $UDID"

mkdir -p $UDID

DATE=`date +"%Y%m%d-%H%M"`
OUT1=$UDID/data_$DATE"_disks1s1.dmg"
OUT2=$UDID/data_$DATE"_disks1s2.dmg"


echo "Dumping data partition in $OUT1 ..."

ssh $SSHOPTS root@localhost "dd if=/dev/rdisk0s1s1  bs=8192" > $OUT1
ssh $SSHOPTS root@localhost "dd if=/dev/rdisk0s1s2  bs=8192" > $OUT2
