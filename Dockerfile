FROM docker.io/library/ruby:3.3.8-bookworm AS builder
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY . .
RUN bundle install
RUN bundle exec jekyll build --future --trace

FROM docker.io/library/caddy:2-alpine
COPY --from=builder /usr/src/app/static /var/www/calyxos.org
COPY ./Caddyfile /etc/caddy/Caddyfile
