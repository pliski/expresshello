FROM node:alpine
WORKDIR /app
COPY . ./
RUN npm install && npm run compile
COPY ./config ./build/src
WORKDIR /app/build/src
CMD ["node", "index"]
EXPOSE 8080