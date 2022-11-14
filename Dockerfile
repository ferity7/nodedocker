FROM node:current-slim

WORKDIR /app

COPY ./package.json ./package-lock.json ./src/ ./

RUN npm install --omit=dev

RUN ls

RUN pwd

ENTRYPOINT npm start
