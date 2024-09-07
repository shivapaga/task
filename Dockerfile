# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json /app
RUN npm install

# Copy the rest of the application code
COPY . /app

# Build the application
RUN npm run build

# Start the React application
CMD ["npm", "start"]

# Expose port 3000
EXPOSE 3000
