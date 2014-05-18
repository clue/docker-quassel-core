# docker-quassel-core

[Quassel IRC](http://quassel-irc.org/) is a modern, cross-platform, distributed IRC program,
where multiple clients can attach to and detach from a central core.
This is a [docker](https://www.docker.io) image that eases setup.

## About Quassel Core

> *From [the official readme](http://bugs.quassel-irc.org/projects/quassel-irc/wiki):*

Quassel is a program to connect to an IRC network.
It has the unique ability to split the graphical component (quasselclient) from the part that handles the IRC connection (quasselcore).
This means that you can have a remote core permanently connected to one or more IRC networks and attach a client from wherever you are without moving around any information or settings.

![](http://bugs.quassel-irc.org/attachments/download/111/distributed.png)

## Usage

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/quassel-core/),
so using it is as simple as running:

```bash
$ docker run clue/quassel-core
```

Running this command for the first time will download the image automatically.
Further runs will be immediate, as the image will be cached locally.
