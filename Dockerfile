FROM node:current-slim

COPY ./package.json ./package-lock.json ./src/ ./

RUN npm install --omit=dev

ENTRYPOINT npm start
