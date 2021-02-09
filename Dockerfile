FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openjdk-8-jdk wget unzip
RUN wget https://data.monarchinitiative.org/exomiser/latest/exomiser-cli-12.1.0-distribution.zip
RUN unzip exomiser-cli-12.1.0-distribution.zip
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
COPY /data exomiser-cli-12.1.0/data





