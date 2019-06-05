FROM node:8

ARG workdir=/usr/src/ace-collab-server

ARG port=3333

WORKDIR ${workdir}

ENV PORT=${port}

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${port}
CMD [ "npm", "start" ]
