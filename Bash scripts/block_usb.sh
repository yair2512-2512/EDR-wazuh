#!/bin/bash
device=$1
if [ -b "/dev/$device" ]; then
    umount /dev/$device
    echo "USB device $device has been unmounted."
    chmod 000 /dev/$device
    echo "USB device $device has been blocked permanently."
else
    echo "Device $device not found."
fi
