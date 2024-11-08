FROM mysql:9.1

# Copy initialization scripts in order
COPY ./01-create-db.sql \
     ./02-init-schema.sql \
     ./03-seed-data.sql \
     /docker-entrypoint-initdb.d/

# Set secure defaults
ENV MYSQL_LOG_CONSOLE=true

# Add labels for better maintainability
LABEL maintainer="Your Name <your.email@example.com>"
LABEL version="1.0"
LABEL description="MySQL test database with initialization scripts"

# Set proper permissions
RUN chmod 0755 /docker-entrypoint-initdb.d/*