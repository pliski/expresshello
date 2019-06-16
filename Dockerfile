FROM node:alpine
WORKDIR /usr/src/app
COPY ./config ./
RUN npm install
COPY ./build/src ./
CMD ["node", "index"]
EXPOSE 8080