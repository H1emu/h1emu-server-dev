FROM node:14-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm i --production ./h1z1-server
# Login server port
EXPOSE 1115/udp
# Zone server port
EXPOSE 1117/udp
# Start both of the servers
CMD [ "npm", "start" ]
