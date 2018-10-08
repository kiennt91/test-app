FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME /test-app

RUN mkdir $APP_HOME
WORKDIR $APP_HOME 

COPY Gemfile $APP_HOME
COPY Gemfile.lock $APP_HOME

ENV BUNDLE_PATH $APP_HOME/vender/bundle
RUN bundle install