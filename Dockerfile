FROM nginx:latest
WORKDIR /app
COPY . .
RUN rm -rf /usr/share/nginx/html
RUN cp -r . /usr/share/nginx/html
EXPOSE 8088
CMD ["nginx", "-g", "daemon off;"]
