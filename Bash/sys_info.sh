#!/bin/bash

if [ $UID -eq 0 ]; then
	echo "Please do not run this script as root."
	exit
fi 

output=$HOME/SysStatus/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
execs=$(sudo find /home -type f -perm 777 2>/dev/null)

if [ ! -d $HOME/SysStatus \]; then
	mkdir $HOME/SysStatus
fi

if [ -f $output ]; then
	rm $output
fi

echo "A Quick System Audit Script" >> $output 

mkdir ~/SysStatus 2> /dev/null
echo "A Quick System Audit Script" >  ~/SysStatus/sys_info.txt
date >> ~/SysStatus/sys_info.txt
echo "" >> ~/SysStatus/sys_info.txt
echo "Machine Type Info:" >> ~/SysStatus/sys_info.txt
echo $MACHTYPE >> ~/SysStatus/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info: $ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo -e "\n777 Files:" >>  $output
$execs >> $output 2> /dev/null
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output
