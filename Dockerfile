# DOCKER-VERSION 1.8.2
FROM       perl:latest
MAINTAINER Daniel Schmidt danschmidt5189@gmail.com

# Install dependencies
WORKDIR /tmp
ADD cpanfile cpanfile
RUN cpanm --notest --quiet --installdeps .

# Add the source code
ADD . /srv/dancer

WORKDIR /srv/dancer
ENTRYPOINT ["perl", "-Ilib", "-w", "bin/app.pl"]
