FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openjdk-8-jdk wget unzip
RUN wget https://data.monarchinitiative.org/exomiser/latest/exomiser-cli-12.1.0-distribution.zip \
    && unzip exomiser-cli-12.1.0-distribution.zip \
    && rm -f exomiser-cli-12.1.0-distribution.zip \
    && cd /exomiser-cli-12.1.0 && mkdir data && cd data \
    && wget https://data.monarchinitiative.org/exomiser/data/1902_hg19.zip \
    && wget https://data.monarchinitiative.org/exomiser/data/1902_hg38.zip \
    && wget https://data.monarchinitiative.org/exomiser/data/1902_phenotype.zip\
    && unzip 1902_*.zip \
    && rm -f 1902_phenotype.zip \
    && rm -f 1902_hg19.zip \
    && rm -f 1902_hg38.zip

    ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/






