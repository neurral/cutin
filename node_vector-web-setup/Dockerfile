FROM node:12.18-alpine3.12

RUN npm i -g vector-web-setup
RUN vector-web-setup && vector-web-setup configure
ENTRYPOINT ["vector-web-setup", "serve"];

EXPOSE 80:8000