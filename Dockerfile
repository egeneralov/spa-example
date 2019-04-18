FROM node:11-alpine

WORKDIR /app/
#ADD . .

ADD package.json package-lock.json /app/

RUN npm install --production

ADD . .

CMD node index.js
