FROM ruby:3.1.1
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql-client
RUN apt-get install -y yarn

WORKDIR /tea_party
COPY Gemfile Gemfile.lock /tea_party/
RUN bundle install
