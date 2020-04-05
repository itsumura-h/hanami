FROM ruby:alpine
RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
    make \
    gcc \
    libc-dev \
    sqlite \
    sqlite-dev

WORKDIR /root/project
RUN gem install debug_inspector -v '0.0.3' --source 'https://rubygems.org/' && \
    gem install sqlite3 -v '1.4.2' --source 'https://rubygems.org/' && \
    gem install hanami