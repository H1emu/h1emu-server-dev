FROM node:14-alpine 
WORKDIR /usr/src/app
COPY . .
# npm ci mess up with submodules dependencies when yarn don't... will fix that one day
RUN yarn
# Login server port
EXPOSE 1115/udp
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
# Start both of the servers
CMD [ "npm", "start" ]
