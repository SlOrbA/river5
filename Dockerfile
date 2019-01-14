FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1338 

CMD [ "npm" , "river5.js" ]
