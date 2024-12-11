FROM ruby:slim@sha256:e004e45a75508f2c3bd5bbfe6593ba60dff77b755626e270d631bba09e8c7ead

LABEL Name=rh Version=0.0.1

EXPOSE 3000

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["ruby", "rh.rb"]
