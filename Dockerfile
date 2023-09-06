# Use the official Node.js image as base
FROM node:18.17.1-alpine3.17

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY src/ .
COPY tsconfig.json .

# Build the TypeScript app
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Start the application
CMD ["node", "dist/src/app.js"]