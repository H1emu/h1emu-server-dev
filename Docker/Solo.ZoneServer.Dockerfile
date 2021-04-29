FROM node:14-alpine 
WORKDIR /usr/src/app
COPY . .
# npm ci mess up with submodules dependencies when yarn don't... will fix that one day
RUN yarn
# Zone server port
EXPOSE 1117/udp
# MongoDB
EXPOSE 27017
CMD [ "npm","run","zone-server" ]
