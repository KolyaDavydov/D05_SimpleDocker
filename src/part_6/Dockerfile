FROM nginx

COPY nginx.conf etc/nginx/nginx.conf

WORKDIR /app

ENTRYPOINT ["nginx", "-g", "daemon off;"]

