#git clone https://github.com/kaizten/kaizten-utils

echo "script username is $USERNAME"
echo "script password is $PASSWORD"

git pull https://${USERNAME}:"${PASSWORD}"@github.com/kaizten/kaizten-utils.git master
pwd
cp pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

