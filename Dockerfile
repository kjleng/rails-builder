ARG RUBY_VER=3.2.2
FROM ruby:${RUBY_VER}-alpine

RUN apk add --no-cache alpine-sdk postgresql-dev

# Default directory
WORKDIR /app

# Install rails
RUN set -ex; \
  gem update --system; \
  gem install rails bundler
  
# Run a shell
CMD ["/bin/sh"]