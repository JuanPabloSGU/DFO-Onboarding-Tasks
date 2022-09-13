# syntax = docker/dockerfile:1
FROM node
WORKDIR /home/app
COPY ./package.json ./
RUN npm install
COPY ./ ./
CMD ["npm", "start"]
