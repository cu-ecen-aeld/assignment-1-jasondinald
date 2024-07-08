#!/bin/bash
writefile=$1;
writestr=$2;
if [[ -z $writefile ]]
then
	echo "no values is specified for file path";
	exit 1;
elif [[ -z $writestr ]];
then
	echo "no values is specified for string";
	exit 1;
fi
filePath="${writefile%/*}";
if [[ ! -e $filePath ]]
then
	mkdir -p $filePath;
fi
touch $writefile; 
echo $writestr > $writefile;   
