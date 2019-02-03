# Minimalistic Java EE 8 Quickstarter

A quickstart maven archetype for creating greenfield Java EE 8 projects
working with Payara 5 and MicroProfile 2.1.


## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=javaee8-payara-microprofile-archetype \
   -Dversion=0.0.1
   
mvn archetype:crawl
   
```

## Run from mvn central repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=javaee8-payara-microprofile-archetype \
    -DarchetypeVersion=0.0.1 -U
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId

## Create your own project

```bash
mvn archetype:generate -DarchetypeGroupId=nl.ivonet -DarchetypeArtifactId=javaee8-payara-microprofile-archetype -DarchetypeVersion=0.0.1 -DgroupId=nl.ivonet -DartifactId=[PROJECT_NAME] -Ddocker-hub-name=[YOUR_DOCKER_HUB_NAME] -Dversion=1.0-SNAPSHOT -Darchetype.interactive=false --batch-mode
```
e.g.

```bash
mvn archetype:generate -DarchetypeGroupId=nl.ivonet -DarchetypeArtifactId=javaee8-payara-microprofile-archetype -DarchetypeVersion=0.0.1 -DgroupId=nl.ivonet -DartifactId=helloworld -Ddocker-hub-name=ivonet -Dversion=1.0-SNAPSHOT -Darchetype.interactive=false --batch-mode
```
