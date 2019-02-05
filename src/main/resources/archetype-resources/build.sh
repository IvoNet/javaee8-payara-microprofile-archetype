#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/usr/bin/env bash
mvn clean package
docker build -t ${docker-hub-name}/${artifactId} .
