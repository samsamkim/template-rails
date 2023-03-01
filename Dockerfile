# syntax=docker/dockerfile:1
FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

# Add a script to be executed every time the container starts.
COPY . /myapp

# Configure the main process to run when running the image
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]