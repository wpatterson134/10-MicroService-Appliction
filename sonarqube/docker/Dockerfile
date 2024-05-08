# Use Alpine Linux as the base image
FROM sonarqube:lts-community

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js and npm
RUN apk add --update nodejs npm

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port if your application listens on a specific port
EXPOSE 9000

# Command to run the application
# CMD ["node", "app.js"]
