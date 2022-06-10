FROM node:alpine3.16
COPY package*.json .

RUN npm install 

WORKDIR /public
COPY ./test.html .
EXPOSE 8080
CMD ["http-server"]
