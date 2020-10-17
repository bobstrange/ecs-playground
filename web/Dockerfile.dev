FROM ruby:2.7

ARG APP_ROOT=/app
ENV APP_ROOT ${APP_ROOT}
WORKDIR ${APP_ROOT}

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY Gemfile ${APP_ROOT}/Gemfile
COPY Gemfile.lock ${APP_ROOT}/Gemfile.lock

RUN bundle config set path 'vendor/bundle' && bundle install
COPY . ${APP_ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
