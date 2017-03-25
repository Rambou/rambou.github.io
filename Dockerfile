# Pull base image.
FROM nginx

# File Author / Maintainer
MAINTAINER Bousios Nikolaos

# Define working directory.
WORKDIR /etc/nginx

# Copy nginx site configuration files
ADD nginx.conf .
RUN rm ./conf.d/default.conf

# Copy website files
COPY . /var/www/html

# Define mountable directories.
VOLUME ["/etc/nginx/conf.d", "/etc/nginx/certs", "/var/log/nginx", "/var/www/html"]

# Expose ports.
EXPOSE 80
EXPOSE 443
