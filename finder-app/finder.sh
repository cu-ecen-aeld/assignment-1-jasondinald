#!/bin/bash

filesdir=$1;
searchstr=$2;
if [[ -z $filesdir ]]
then
	echo "no values is specified for file";
	exit 1;
elif [[ -z $searchstr ]];
then
	echo "no values is specified for str";
	exit 1;
elif [[ ! -d  "$filesdir" ]]; 
then
	echo "file is not a directory";
	exit 1
fi
fscount=$(find $filesdir -type f | wc -l);
srcount=$(grep -r "$searchstr" $filesdir |wc -l);
echo "The number of files are $fscount and the number of matching lines are $srcount" 
