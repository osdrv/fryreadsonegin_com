FROM busybox:musl
ADD public /usr/local/www/fryreadsonegin.com/public
COPY config/fryreadsonegin.com.nginx.conf /etc/nginx/conf.d/fryreadsonegin.com/site.conf
RUN chown -R nobody:nogroup /usr/local/www/fryreadsonegin.com/public
CMD ["sh"]
