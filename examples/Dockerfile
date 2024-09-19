# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the examples folder into the container at /app
COPY examples/ /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run your script when the container launches
CMD ["node", "app.js"]
