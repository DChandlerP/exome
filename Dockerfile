FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openjdk-8-jdk wget unzip
RUN wget https://data.monarchinitiative.org/exomiser/latest/exomiser-cli-12.1.0-distribution.zip \
RUN unzip exomiser-cli-12.1.0-distribution.zip
RUN rm -f exomiser-cli-12.1.0-distribution.zip
WORKDIR /exomiser-cli-12.1.0
RUN mkdir data && cd data
RUN wget https://data.monarchinitiative.org/exomiser/data/1902_hg19.zip
RUN wget https://data.monarchinitiative.org/exomiser/data/1902_hg38.zip
RUN wget https://data.monarchinitiative.org/exomiser/data/1902_phenotype.zip\
RUN unzip 1902_phenotype.zip
RUN rm -f 1902_phenotype.zip
RUN 1902_hg19.zip
RUN rm -f 1902_hg19.zip
RUN unzip 1902_hg38.zip
RUN rm -f 1902_hg38.zip

    ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/






