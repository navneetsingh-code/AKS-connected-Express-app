# Step 1: Use an official Node.js base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of your app code
COPY . .

# Step 6: Expose the port your app runs on
EXPOSE 3000

# Step 7: Start the app
CMD ["node", "index.js"]
