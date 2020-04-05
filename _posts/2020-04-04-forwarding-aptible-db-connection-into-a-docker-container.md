---
layout: post
title: "Forwarding Aptible db connection into a docker container"
tags:
 -
---


This is an amazing thing that I learned. Many thanks to my guide :)

We want to do this so that we can build our Docker container which will connect to a db in [Aptible](https://www.aptible.com/), and from our local machine, run (in this case a batch process) in that local docker container that actually connects to a running Aptible database. 

Ran locally:

### Bash tab 1:

```(bash)
docker build .
docker run \
  DB_URI="mysql://YOUR_USERNAME:REDACTED_PASSWORD@host.docker.internal:12345/db" \
  -e PYTHONPATH=/usr/src/app <docker-built-image-hash> python my/repo/file.py
```

### Bash tab 2:
```(bash)
python2 relay.py
```
`relay.py` is a port-forward/proxy to let the Docker container connect to aptible localhost https://gist.github.com/compwron/bd963a1632ae3a67f9f568b7748d4a58

### Bash tab 3:
```(bash)
aptible db:tunnel --port YOUR_PORT APTIBLE_DB_NAME
```

### Some important points about the above:

1. `host.docker.internal` is a [mac thing](https://docs.docker.com/docker-for-mac/networking/)
1. `PYTHONPATH=/usr/src/app` is `/usr/src/app` because that's what's set in the Dockerfile which generated the docker image that we are running the command in, and so that your `python my/repo/file.py` can correctly resplve imports from other files in your codebase.
1. This would work with any other non-Aptible remote database probably, I just happen to be using Aptible
1. YOUR_PORT in `aptible db:tunnel` must match the port in `relay.py`
1. `:12345` must match the other port in `relay.py`