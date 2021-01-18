FROM node:12 
WORKDIR /usr/src/app
COPY . .
RUN npm ci
# Zone server port
EXPOSE 1117/udp
CMD [ "npm","run","zone-server" ]
