#!/bin/bash

# Define packages list

packages=(
	'nano'
	'wget'
	'net-tools'
	'lynis'
	'chkrootkit'
)

# loop through the list of packages and show if they are installed

for package in ${packages[@]};
do 
	if [ $(which $package) ]
	then 
		echo "$package is installed at $(which $package)."
	else 
		echo "$package is not installed."
	fi
done

## when running above loop, net-tools is said to not be installed but it is 

# Search each user's home directory for scripts and provide a formatted output

for user in $(ls /home):
do
	for item in $(find /home/$user -iname '*.sh');
	do
		echo -e "Found a script in $users's home folder! \n$item"
	done
done

# loop through scripts in the system and change the permissions to only read 
# in order to prevent malicious execution or to troubleshoot 

for script in $(ls /);
do
	if [ ! -x /$script ]
	then
		chmod 444 /$script
	fi
done

# loop through a group of files and create a hash for each file.
# we assume files_for_hashing exists and contains at least one file 
# simply move desired files to be hash to file_for_hashing or customize
# this code accordingly 

for file in $(ls ~/Documents/files_for_hashing/);
do
	sha256sum $file
done


