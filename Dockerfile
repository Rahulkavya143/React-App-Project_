# Use a Node.js base image
FROM node:18-alpine

# Install the 'serve' package globally
RUN npm install -g serve

# Set the working directory
WORKDIR /app

# Copy the built React app (build folder) into the container
COPY build/ ./build

# Expose port 3000
EXPOSE 3000

# Start the app with serve
CMD ["serve", "-s", "build", "-l", "3000"]