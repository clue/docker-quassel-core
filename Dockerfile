FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y quassel-core libqca2-plugin-ossl

USER quasselcore
# use ENTRYPOINT instead of CMD so that we can easily pass additional arguments to the run command
ENTRYPOINT ["quasselcore", "--configdir=/var/lib/quassel/"]

VOLUME ["/var/lib/quassel"]
EXPOSE 4242
