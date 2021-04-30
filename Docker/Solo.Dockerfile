FROM node:16-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm i ./h1z1-server
# Login server port
EXPOSE 1115/udp
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
# Start both of the servers
CMD [ "npm", "start" ]
