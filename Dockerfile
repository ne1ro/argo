# Install Ruby 2.3
FROM ruby:2.3-alpine

# Update system and install deps
RUN apk install --update alpine-sdk postgresql-dev nodejs

# Create project dir
RUN mkdir /argo
WORKDIR /argo

# Install project dependencies
ADD Gemfile /argo/Gemfile
ADD Gemfile.lock /argo/Gemfile.lock
ENV RAILS_ENV production
RUN bundle install --without development test --quiet

# Mount project dir
COPY . ./

# Install frontend deps
RUN npm install
RUN ./node_modules/.bin/bower install
RUN ./node_modules/.bin/webpack build

# Configure an entry point, don't need to specify "bundle exec" for each command
ENTRYPOINT ["bundle", "exec"]

CMD ["puma", "-b", "0.0.0.0"]
