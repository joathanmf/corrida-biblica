FROM ruby:3.2.1 as base

RUN apt update -qq && apt install -y build-essential apt-utils libpq-dev nodejs npm

RUN npm install -g n
RUN n 18.18.2
RUN npm install -g npm
RUN npm install -g yarn

WORKDIR /docker/app

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /docker/app

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

CMD [ "bundle","exec", "puma", "config.ru"]