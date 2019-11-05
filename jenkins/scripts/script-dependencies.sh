#git clone https://github.com/kaizten/kaizten-utils

echo "script username is $USERNAME"
echo -n $USERNAME | wc -c
echo "script password is $PASSWORD"
echo -n $PASSWORD | wc -c

git clone https://$USERNAME:$PASSWORD@github.com/kaizten/kaizten-utils.git
pwd
cp pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

