FROM node:12.18-alpine3.12

ENV PORT=8000
RUN npm i -g neurral-vws
RUN neurral-vws && neurral-vws configure
COPY package.json .
CMD npm start

EXPOSE $PORT