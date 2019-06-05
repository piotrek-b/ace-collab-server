# Ace Collab Server - Test

## Running

1. Update `docker-compose.yml`, if there is a need to run app under different port / use different workdir.

```yaml
version: '3'

services:
  server-test:
    build:
      context: .
      dockerfile: Dockerfile
      args:
        #  provide different port if needed, this will be used by node.js app and Dockerfile EXPOSE:
        port: 4444
         # provide different workdir if needed, this will be used as Dockerfile WORKDIR:
        workdir: /usr/src/test
    ports:
      # provide different port if needed:
      - "4444:4444"
```

2. Run `sudo docker-compose up`.
