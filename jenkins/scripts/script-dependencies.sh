#git clone https://github.com/kaizten/kaizten-utils

echo "script username is $USERNAME"
echo "script password is $PASSWORD"

git clone https://${USERNAME}:${PASSWORD}@github.com/kaizten/kaizten-utils
pwd
cp pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

