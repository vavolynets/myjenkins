#!/bin/sh
for fn in /var/jenkins_home/init.groovy.d/create_user*.groovy
do
    if [ -s ${fn} ]
        then
        echo '************'
        sed -n 's/hudsonRealm\.createAccount("\(.*\)","\(.*\)")$/User: \1\nPassword: \2/p' ${fn}
        echo '************'
    fi
done
