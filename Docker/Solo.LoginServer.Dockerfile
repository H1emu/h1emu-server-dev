FROM node:12 
WORKDIR /usr/src/app
COPY . .
RUN npm ci
# Login server port
EXPOSE 1115/udp
CMD [ "npm","run","login-server" ]
