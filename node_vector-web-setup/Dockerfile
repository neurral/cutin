FROM node:12.18-alpine3.12

RUN npm i -g vector-web-setup
RUN vector-web-setup && vector-web-setup configure
CMD (vector-web-setup serve); echo Vector Web Setup started

EXPOSE 8000/tcp
EXPOSE 8000/udp