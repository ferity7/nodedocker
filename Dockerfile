FROM node:current-slim

WORKDIR /app

COPY ./package.json ./package-lock.json ./src/ ./

CMD ls

RUN npm install --omit=dev

ENTRYPOINT npm start
