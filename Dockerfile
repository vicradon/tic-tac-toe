FROM node:12-alpine

WORKDIR /tic-tac-toe
COPY . .

RUN npm install --production
CMD [ "ENV_SILENT=true node", "server.js" ]