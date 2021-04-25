FROM node:14-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm ci
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
CMD [ "npm","run","zone-server" ]
