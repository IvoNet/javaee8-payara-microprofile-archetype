# Minimalistic Java EE 8 Quickstarter

A quickstart maven archetype for creating greenfield Java EE 8 projects


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