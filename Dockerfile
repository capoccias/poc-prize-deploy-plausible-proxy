FROM nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/cache/nginx
WORKDIR /app
COPY . ./
ENTRYPOINT ["nginx", "-g", "daemon off;"]