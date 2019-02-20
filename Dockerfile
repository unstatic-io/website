FROM unstatic.io/alpine-nodejs-nginx:8.15.0

WORKDIR /data/app

COPY . .

COPY ./docker/unstatic.io.conf /etc/nginx/sites-enabled/unstatic.io.conf

RUN npm install && \
    npm run dist
