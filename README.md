# Java EE 8 Quickstarter archetype

A quickstart maven archetype for creating greenfield Java EE 8 projects
working with Payara 5 and MicroProfile 2.1.

You can find the archetype on [maven central](http://ivo2u.nl/tv) 

I've also written a blog about it on [IvoNet.nl](http://ivo2u.nl/ty)

## Create Java EE 8 Project from mvn central repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=javaee8-payara-microprofile-archetype \
    -DarchetypeVersion=1.0 -U
```

## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=javaee8-payara-microprofile-archetype \
   -Dversion=1.0
   
mvn archetype:crawl
   
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId

## Create your own project in batch mode

```bash
mvn archetype:generate -DarchetypeGroupId=nl.ivonet -DarchetypeArtifactId=javaee8-payara-microprofile-archetype -DarchetypeVersion=1.0 -DgroupId=nl.ivonet -DartifactId=[PROJECT_NAME] -Ddocker-hub-name=[YOUR_DOCKER_HUB_NAME] -Dversion=1.0-SNAPSHOT -Darchetype.interactive=false --batch-mode
```
e.g.

```bash
mvn archetype:generate -DarchetypeGroupId=nl.ivonet -DarchetypeArtifactId=javaee8-payara-microprofile-archetype -DarchetypeVersion=1.0 -DgroupId=nl.ivonet -DartifactId=helloworld -Ddocker-hub-name=ivonet -Dversion=1.0-SNAPSHOT -Darchetype.interactive=false --batch-mode
```


# Contact

Twitter: @ivonet
Blog   : https://www.ivonet.nl