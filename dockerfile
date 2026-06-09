# Base image (Node runtime)
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all app code
COPY . .

# Expose port (same as Express app)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]