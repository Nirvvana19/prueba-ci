# Base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY ./app/package.json ./
RUN npm install

# Copy the application code
COPY ./app .

# Expose the port that the app will run on
EXPOSE 3300

# Start the application
CMD ["npm", "start"]
