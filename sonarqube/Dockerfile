# Use the SonarQube LTS Community Edition as the base image
FROM sonarqube:lts-community

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Verify Node.js and npm installation
RUN node -v && npm -v

# Optionally, you can add additional configuration or setup steps here

# Expose SonarQube ports
EXPOSE 9000

# Start SonarQube
CMD ["./bin/run.sh"]
