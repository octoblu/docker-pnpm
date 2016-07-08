# docker-pnpm
Docker image built from node:5 with pnpm pre-installed

To use, create a docker file with `octoblu/pnpm` in `FROM`, 
then use `pnpm` instead of `npm` for installs.  We recommend
using the `--production` and `--quiet` flags.

```Dockerfile
FROM octoblu/pnpm
MAINTAINER Bob Example <bob@example.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN pnpm install --production --quiet
COPY . /usr/src/app/

CMD [ "node", "server.js" ] # Explicitely calling node rather than 'npm start' allows signal propagation (SIGINT, SIGTERM, etc.)
```
