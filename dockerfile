FROM node:lts-alpine
WORKDIR /usr/src/app
COPY front/package*.json ./
RUN ls -l
RUN npm install
COPY front ./
RUN ls -l
RUN npm run build
COPY front/nodeServer.js dist/nodeServer.js
WORKDIR /usr/src/app/dist
EXPOSE 8080
CMD [ "node", "noderServer.js"]