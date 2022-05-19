FROM buddhi82/intern:latest

COPY index.html /var/www/html

CMD  ["httpd", "-D", "FOREGROUND"]
