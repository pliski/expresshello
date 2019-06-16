FROM node:alpine
WORKDIR /app
COPY . /app
RUN npm install && npm run compile
COPY ./config /app/build/src
WORKDIR /app/build/src
# COPY ./build/src /app
CMD ["node", "index"]
EXPOSE 8080