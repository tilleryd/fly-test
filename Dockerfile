FROM docker.io/node:16
ARG NODE_ENV=production
WORKDIR /usr/src/app
COPY ./build .
COPY ./README.md .
RUN npm install -g serve
CMD serve -s ./ -l 8080
EXPOSE 8080
