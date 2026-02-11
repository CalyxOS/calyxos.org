FROM docker.io/library/ruby:3.3.10-bookworm AS builder
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY ["Gemfile", "Gemfile.lock", "./"]
RUN bundle install
COPY ["_config.yml", "Rakefile", "./"]
COPY pages ./pages
COPY tasks ./tasks
RUN bundle exec jekyll build --future --trace

FROM docker.io/library/caddy:2-alpine
COPY --from=builder /usr/src/app/static /var/www/calyxos.org
COPY ./Caddyfile /etc/caddy/Caddyfile
RUN adduser -S -G www-data -u 82 www-data && chown -R www-data:www-data /config /data /etc/caddy
USER www-data
