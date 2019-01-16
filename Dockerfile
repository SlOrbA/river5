FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY config.json .

VOLUME /data

EXPOSE 8080
EXPOSE 8081 

CMD [ "npm" , "start" ]
