FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . ./

RUN npm run build

COPY . ./

EXPOSE 3000
CMD [ "node", "server.js" ]
