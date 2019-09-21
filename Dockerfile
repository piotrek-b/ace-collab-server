FROM node:8

ARG workdir=/usr/src/ace-collab-server
ARG appPort=3333
ARG exposePort=3333
ARG host="0.0.0.0"
ARG allowedOrigins=[]
ARG readOnly=false

WORKDIR ${workdir}

ENV ALLOWED_ORIGINS=${allowedOrigins}
ENV HOST=${host}
ENV PORT=${appPort}
ENV READ_ONLY=${readOnly}

COPY package*.json ./

RUN npm --loglevel=error install

COPY . .

EXPOSE ${exposePort}
CMD ["npm", "start"]
