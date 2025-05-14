# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]docker build -t web-page-login .docker run -p 3000:3000 web-page-login

#Build the Docker image:
#docker build -t web-page-login .

# Run the container:
#docker run -p 3000:3000 web-page-login
