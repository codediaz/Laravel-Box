ARG PHPIMAGE
FROM php:${PHPIMAGE}

# Arguments for the UID and GID
ARG USER_ID=1000
ARG GROUP_ID=1000

# Install necessary packages
RUN apk update && \
    apk add --no-cache zip unzip bash 

# Install Composer
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

# Allow the blocked Composer plugin
RUN composer config --global --no-plugins allow-plugins.kylekatarnls/update-helper true

# Create a group and user with the same UID and GID as the host user
RUN addgroup -g ${GROUP_ID} appuser && \
    adduser -D -u ${USER_ID} -G appuser appuser

# Change the ownership of the /app directory to the appuser
RUN mkdir -p /app && \
    chown appuser:appuser /app

# Switch to appuser
USER appuser

# Set the working directory
WORKDIR /www

# You can specify a default command or entrypoint, such as starting PHP's built-in server
# CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
