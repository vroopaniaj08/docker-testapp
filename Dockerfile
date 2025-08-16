FROM node:18-alpine

# Set environment variables
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

# Create and set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port your app runs on
EXPOSE 5050

# Command to run the application
CMD ["node", "server.js"]