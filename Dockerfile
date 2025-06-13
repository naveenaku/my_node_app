# 1. Use an official Node.js runtime as the base image
FROM node:18

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json to the container
COPY package*.json ./

# 4. Install app dependencies
RUN npm install

# 5. Copy the rest of the application files
COPY . .

# 6. Expose the port the app runs on
EXPOSE 3000

# 7. Define the command to run your app
CMD ["npm", "start"]
