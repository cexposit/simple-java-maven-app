#git clone https://github.com/kaizten/kaizten-utils

echo "script username is $USERNAME"
echo -n $USERNAME | wc -c
echo "script password is $PASSWORD"
echo -n $PASSWORD | wc -c

export GIT_USER=$USERNAME
export GIT_PASSWORD=$PASSWORD

git config credential.helper '!f() { sleep 1; echo "username=${GIT_USER}"; echo "password=${GIT_PASSWORD}"; }; f'

git clone https://$USERNAME:$PASSWORD@github.com/kaizten/kaizten-utils.git
pwd
cp pom-utils.xml kaizten-utils/pom.xml
cd kaizten-utils
mvn clean install

