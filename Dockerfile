# syntax=docker/dockerfile:1
FROM node:20-alpine
ENV NODE_ENV=production

WORKDIR /src
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]