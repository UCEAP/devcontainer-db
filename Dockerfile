FROM mariadb:10.6

ENV DEBIAN_FRONTEND=noninteractive

# Install curl and php
RUN apt-get update \
    && apt-get install --no-install-recommends -y curl php php-xml

# Install terminus
RUN curl -L https://github.com/pantheon-systems/terminus/releases/download/3.6.1/terminus.phar --output /usr/local/bin/terminus \
    && chmod +x /usr/local/bin/terminus
