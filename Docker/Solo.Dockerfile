FROM node:14-alpine 
WORKDIR /usr/src/app
COPY . .
RUN npm ci
# Login server port
EXPOSE 1115/udp
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
# Start both of the servers
CMD [ "npm", "start" ]
