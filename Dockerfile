# DOCKER-VERSION 0.3.4
FROM       perl:latest
MAINTAINER Daniel Schmidt danschmidt5189@gmail.com

RUN cachebuster=b953b35 git clone git@github.com:danschmidt5189/perl-dancer-quickstart.git
RUN cd perl-dancer-quickstart
RUN chmod +x ops/*
RUN ops/install.sh

EXPOSE 3000

WORKDIR perl-dancer-quickstart

CMD ops/run.pl
