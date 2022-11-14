FROM node:current-slim

WORKDIR /app

COPY ./package.json ./package-lock.json ./src/ ./

RUN ls

RUN pwd

RUN npm install --omit=dev

ENTRYPOINT npm start
