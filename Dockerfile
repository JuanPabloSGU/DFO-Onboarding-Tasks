# syntax = docker/dockerfile:1
FROM node
WORKDIR /home/app
COPY ./ ./
RUN npm install
CMD ["npm", "start"]
