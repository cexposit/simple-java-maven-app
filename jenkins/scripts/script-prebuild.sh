#!/bin/bash

echo "script username is $USERNAME"
echo "script password is $PASSWORD" 

git clone https://cexposit:$PASSWORD@github.com/kaizten/kaizten-utils

cp jenkins/scripts/pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

