FROM nginx:alpine-slim

RUN chown -R nobody.nobody /usr/share/nginx/html /run /var/log/nginx /etc/nginx /var/cache/nginx

USER nobody

COPY --chown=nobody htdocs/ /usr/share/nginx/html
