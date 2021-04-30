FROM node:16-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm i ./h1z1-server
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
CMD [ "npm","run","zone-server" ]
