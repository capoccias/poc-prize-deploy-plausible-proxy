FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/cache/nginx

CMD ["nginx", "-g", "daemon off;"]