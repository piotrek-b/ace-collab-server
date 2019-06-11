FROM node:8

ARG workdir=/usr/src/ace-collab-server
ARG port=3333
ARG HOST="0.0.0.0"
ARG allowedOrigins=[]

WORKDIR ${workdir}

ENV ALLOWED_ORIGINS=${allowedOrigins}
ENV HOST=${host}
ENV PORT=${port}

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${port}
CMD ["npm", "start" ]
