# syntax = docker/dockerfile:1
FROM node:12-alpine
WORKDIR /home/app
COPY ./ ./
RUN npm install --production
CMD ["npm", "start"]
