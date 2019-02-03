#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/usr/bin/env bash
mvn clean package && docker build -t ${docker-hub-name}/${artifactId} .
docker rm -f ${artifactId} || true && docker run -it --name ${artifactId} -p 8080:8080 -p 4848:4848 -p 8181:8181 --name ${artifactId} ${docker-hub-name}/${artifactId}
