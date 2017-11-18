FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /HackWPI
WORKDIR /HackWPI
ADD Gemfile /HackWPI/Gemfile
ADD Gemfile.lock /HackWPI/Gemfile.lock
RUN bundle install
ADD . /HackWPI
