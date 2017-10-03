FROM bskton/php-web-app

RUN rm /etc/nginx/sites-available/default.conf
ADD nginx/site.conf /etc/nginx/sites-available/default.conf

ADD www/app/ /app/

EXPOSE 80

CMD ["/start.sh"]