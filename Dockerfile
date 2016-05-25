FROM ruby:2.3.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV APP_ROOT=/usr/src/app

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install --gemfile Gemfile --binstubs --without development test

COPY . ./

EXPOSE 4567
CMD bundle exec ruby simple_server.rb
