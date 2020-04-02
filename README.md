## Basic configuration files for distributed clustered web service systems
This repo contains fully functional configuration files to build high performant web hosting system.

```
        -----> gunicorn (1) --- N threads of ---> flask application
      /
nginx   -----> ...
      \
        -----> gunicorn (N) --- N threads of ---> django service
```

*docker-compose.yml* describes creation of 3 sample **docker containers**:
- nginx container
- gunicorn + flask app container
- gunicorn + flask app container

The configuration assumes 33.(3)% of load is being forwarded by nginx to 2nd gunicorn+service container,
the rest of load is being directed to the first one.

Command line:
```
pip install docker-compose
docker-compose up -d
docker-compose logs -f nginx
curl localhost:5002
```
Upon some errors on building images by ```docker-compose up -d```,
check file permissions of *~/.docker* and */var/run/docker.sock*
and ```chmod``` them if needed. Also, don't be shy to google your issues.
                                                                     :+1:
