FROM node:alpine3.20

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 5000

CMD [ "npm", "start" ]

