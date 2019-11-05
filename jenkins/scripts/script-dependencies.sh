#!/bin/bash

echo "script username is $USERNAME"
echo "script password is $PASSWORD" 
#echo -n $PASSWORD | wc -c

#export GIT_USER=$USERNAME
#export GIT_PASSWORD=$PASSWORD

#echo -n $GIT_USER | wc -c
#echo -n $GIT_PASSWORD | wc -c

#git config credential.helper '!f() { sleep 1; echo "username=${GIT_USER}"; echo "password=${GIT_PASSWORD}"; }; f'

#git clone https://github.com/kaizten/kaizten-utils
git clone https://cexposit:$PASSWORD@github.com/kaizten/kaizten-utils

pwd
ls
cp jenkins/scripts/pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

