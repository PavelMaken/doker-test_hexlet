FROM node:20.15-alpine

RUN mkdir -p /app

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

ENTRYPOINT ["npm", "run", "start"]