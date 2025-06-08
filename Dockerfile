FROM nginx:mainline-alpine3.20-slim

COPY robots.txt /usr/share/nginx/html/robots.txt
COPY /site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]