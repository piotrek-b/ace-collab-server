# Ace Collab Server - Test

## Running

1. Update `docker-compose.yml`, if there is a need to run app under different port, host, to use different workdir or to have some request origins blocked.

```yaml
version: '3'

services:
  server-test:
    build:
      context: .
      dockerfile: Dockerfile
      args:
         # provide different allowedOrigins if needed, this will be node.js app
         # the hosts listed here are going to be the ones that are going to
         # be treated as allowed origin (no CORS errors)
         # e.g. allowedOrigins: '["www.example.com", "www.example-test.com"]'
         # if the list is empty, like below, all origins are allowed
         # WARNING: use single quote for the array, double quote for the elements
        allowedOrigins: '[]'
        #  provide different port if needed, this will be used by node.js app:
        appPort: 4444
        #  provide different port if needed, this will be used by Dockerfile EXPOSE:
        exposePort: 4444
        #  provide different host if needed, this will be used by node.js app:
        host: "0.0.0.0"
         # provide different workdir if needed, this will be used as Dockerfile WORKDIR:
        workdir: /usr/src/test
         # provide "true" if the session should be readonly (only admin can modify code, others can view)
        readOnly: "false"
    ports:
      # provide different port if needed:
      - "4444:4444"
```

2. Run `sudo docker-compose up`

*NOTE:*

If the `docker-compose.yml` has been modified after first run, use the `sudo docker-compose up --force-recreate --build` command to make sure that the image is going to be built again.
