FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y postgresql-client
RUN mkdir /food_bot
WORKDIR /food_bot
COPY Gemfile /food_bot/Gemfile
COPY Gemfile.lock /food_bot/Gemfile.lock
RUN bundle install
COPY . /food_bot
# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]