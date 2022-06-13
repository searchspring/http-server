FROM node:alpine3.16
ARG VCS_REF \
    BUILD_DATE
COPY package*.json ./

RUN npm install 

WORKDIR /public
COPY ./test.html .
EXPOSE 8080
CMD ["http-server"]
