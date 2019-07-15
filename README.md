Turicreate runs in Docker containers,

Build your turicreate with tag,
$ docker build -t turicreate:tag .

Run the docker container from the builded image
$ docker run --name turicreate-cpu -i -t -e ARG1=value turicreate:tag

Referred from https://github.com/apple/turicreate
