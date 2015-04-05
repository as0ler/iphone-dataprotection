#!/bin/sh

for VER in 7.0
do
    #if [ -f "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS$VER.sdk/System/Library/Frameworks/IOKit.framework/IOKit" ];
	if [ -f "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.0.sdk/System/Library/Frameworks/IOKit.framework/Versions/A/IOKit" ];
	then
        	SDKVER=$VER
        	echo "Found iOS SDK $SDKVER"
        	break
	fi
done
if [ "$SDKVER" == "" ]; then
    echo "iOS SDK not found"
    exit
fi
SDKVER=$SDKVER make -C ramdisk_tools

./build_ramdisk.sh iPhone3,3_5.0.1_9A405_Restore.ipsw 038-3715-001.dmg 3aeab4ceb61e011f3013873998bfcf01c585bb548f91e19c9085473f93f6a708 02d55437d1fd7c9d24aeb312a78dbd49 myramdisk_n92ap.dmg

if [ "$?" == "0" ]
then
    echo "You can boot the ramdisk using the following command (fix paths)"
    echo "redsn0w -i iPhone3,3_5.0.1_9A405_Restore.ipsw -r myramdisk_n92ap.dmg -k kernelcache.release.n92.patched"
    echo "Add -a \"-v rd=md0 nand-disable=1\" for nand dump/read only access"
fi
