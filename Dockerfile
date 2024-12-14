# # Use Node.js 14 as the base image
FROM node:20.17.0

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install -g npm@latest

RUN npm install -g pm2@latest

RUN npm install 
# Copy the rest of the app files to the container
COPY . .

# Expose port 3000 for the app
EXPOSE 8000

# Start the app using npm start
CMD [ "node", "." ]
# CMD ["pm2-docker", "start", "index.js", "--name", "queen-anita"]