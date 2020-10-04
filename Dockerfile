FROM ruby:2.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

RUN mkdir /ogyz
WORKDIR /ogyz
COPY Gemfile /ogyz/Gemfile
COPY Gemfile.lock /ogyz/Gemfile.lock
RUN bundle install
COPY . /ogyz

# Install foreman
RUN gem install foreman

# Add default foreman config
ADD Procfile /ogyz

# script's to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD bundle exec rake assets:precompile && foreman start -f Procfile
#CMD ["rails", "server"]

EXPOSE 3002