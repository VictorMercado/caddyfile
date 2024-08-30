# Use the official Caddy image from Docker Hub
FROM caddy:2

# Copy the Caddyfile into the container
COPY Caddyfile /etc/caddy/Caddyfile

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Run Caddy
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
