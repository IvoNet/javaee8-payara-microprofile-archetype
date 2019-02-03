#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/usr/bin/env bash

RUNNING=$(docker inspect --format="{{ .State.Running }}" ${artifactId} 2> /dev/null)
if [ $? -eq 1 ] || [ "$RUNNING" == "false" ]; then
    rm -rfv ./artifact/*.war

    docker run \
     -d \
     --rm \
     --name ${artifactId} \
     -p 8080:8080 \
     -p 8181:8181 \
     -p 4848:4848 \
     -v "$(pwd)/artifact:/autodeploy" \
     ivonet/payara:5.184

    echo "Payara 5 admin console credentials:"
    echo "Url: https://localhost:4848"
    echo "Usr: admin"
    echo "Pwd: secret"

    mvn clean package
else
    /usr/bin/osascript -e 'display notification "Stopping..." with title "${artifactId}"'
    docker rm -f ${artifactId}
fi

