FROM node:16.17 AS build
RUN apt update -y
COPY ./ /app
WORKDIR /app
RUN apt install -y npm
RUN npm i
RUN npm run build

FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /app/build /usr/share/nginx/html/
