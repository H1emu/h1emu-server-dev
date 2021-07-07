FROM node:16-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm i --production ./h1z1-server
# Zone server port
EXPOSE 1117/udp
CMD [ "npm","run","zone-server" ]
