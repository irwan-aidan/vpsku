#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo ""
echo "Membuat semakan sekiranya terdapat sebarang update.."
sleep 3
echo "Tiada sebarang update untuk waktu ini.."
sleep 3
rm -f update.sh
cd
clear
