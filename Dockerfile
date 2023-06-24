# Use the official Node.js image as the base image
FROM node:20.3.1-alpine3.17

# Install latest version of Wrangler
RUN npm i -g wrangler

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# Install dependencies
# RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Set the command to start the development server
CMD ["npm", "run", "start"]
