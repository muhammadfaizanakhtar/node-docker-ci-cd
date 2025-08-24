# Use Node.js LTS image
FROM node:18

# Working directory inside container
WORKDIR /usr/src/app

# Copy package.json & install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

