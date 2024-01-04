# Use the official Puppeteer image as the base image
FROM ghcr.io/puppeteer/puppeteer:21.6.1@sha256:d41d0271c774019a9bf6a1bbec8071d067558815f047bc6f15c84ebab12f0391

# Set the working directory
WORKDIR /usr/src/app

# Copy only the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 3001

# Start the app
CMD ["npm", "start"]
