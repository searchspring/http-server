FROM node:alpine3.16

ARG VCS_REF
ARG BUILD_DATE

RUN npm i http-server -g
WORKDIR /public
COPY ./test.html .

EXPOSE 8080
CMD ["http-server"]
