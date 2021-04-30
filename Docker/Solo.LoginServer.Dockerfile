FROM node:14-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm ci
# Login server port
EXPOSE 1115/udp
# MongoDB
EXPOSE 27017
CMD [ "npm","run","login-server" ]
