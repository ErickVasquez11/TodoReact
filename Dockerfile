FROM node:current-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install react-icons

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
