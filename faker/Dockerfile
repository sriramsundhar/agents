FROM node:14.2.0-alpine3.10

WORKDIR /home/node/faker
COPY resources .

RUN npm install
CMD [ "node", "index.js" ]

EXPOSE 3001