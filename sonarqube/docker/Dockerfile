# Use a base image of your choice (e.g., Debian or Alpine)
FROM sonarqube:lts-community

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port if your application listens on a specific port
EXPOSE 9000

# Command to run the application
# CMD ["node", "app.js"]
