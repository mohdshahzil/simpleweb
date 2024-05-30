# Specify a base image
FROM node:alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Default command
CMD ["npm", "start"]
