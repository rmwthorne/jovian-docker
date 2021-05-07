# Jovian Docker

[Jovian](https://github.com/DennisSchmitz/Jovian) Jovian is a Viromics toolkit to automatically process raw NGS data from human clinical samples into clinically relevant information.

```
docker build -t jovian-docker .
docker run -it jovian-docker
```

## Usage

Images are built from master and pushed to dockerhub, just pull [rmwthorne/jovian](https://hub.docker.com/r/rmwthorne/jovian).

```docker run rwmthorne/jovian jovian -h```
