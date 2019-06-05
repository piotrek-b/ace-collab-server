FROM node:8

WORKDIR /usr/src/app2

ARG port=3333

ENV PORT=${port}

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE ${port}:${port}
CMD [ "npm", "start" ]
