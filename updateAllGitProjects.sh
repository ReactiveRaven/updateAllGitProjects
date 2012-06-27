#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";

pushd $DIR >/dev/null 2>&1;

find . -maxdepth 2 -name ".git" |
tr "/" "\n" | grep -v "^\.$" | grep -v "^\.git$" |
while read line;
do
	pushd "$line" > /dev/null 2>&1;
	echo;
	echo "==========";
	echo $line;
	echo "==========";
	branch="`git branch | grep "^*" | cut -c 3- | tr -d " \n"`";
	git fetch;

	git pull origin $branch;
	popd > /dev/null 2>&1;
done;

popd > /dev/null 2>&1;
