#!/bin/bash

#
# This script initializes an ADB session for the device ending with the device ID sent as arument (i.e., XXXXXXXX$1)
# Author: Xavier Silva 
# GitHub: xsSilva
#

# Substring of the device ID (last part of its ID)
device_id_substr=$1

# Find all available device IDs
available_device_ids=$(adb devices | sed '/List/d' | sed '/^\s*$/d' | sed 's/\<device\>//g')

# Find the device ID
while read -r line; do
    if [[ ${line} == *${device_id_substr} ]]; then
	device_id=${line}
    fi
done <<< "${available_device_ids}"


# Parse aditional ADB arguments
adb_args=$(sed "s/${device_id_substr}//g" <<< $*) # remove the device id substring from the arguments list

# Start the adb shell session
if [ -z "${device_id}" ]; then 
    echo "Invalid device ID substring. Please insert a valid value."
    exit 1
else
    adb -s ${device_id} ${adb_args}
    exit 0
fi
