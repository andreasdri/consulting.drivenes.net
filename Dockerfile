FROM node:latest

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN set -e \
  && npm install -g http-server gulp \
  && yarn \
  && gulp

EXPOSE 8080

ENTRYPOINT ["http-server"]
