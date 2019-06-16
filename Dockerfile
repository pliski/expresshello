FROM node:alpine
WORKDIR /app
COPY ./config /app
COPY ./build/src /app
RUN npm install
CMD ["node", "index"]
EXPOSE 8080