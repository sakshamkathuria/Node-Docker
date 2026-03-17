FROM node:alpine

WORKDIR /app

# Step 1: Copy package.json first
COPY package*.json ./

# Step 2: Install dependencies
RUN npm install

# Step 3: Copy remaining files
COPY . .

# Step 4: Run app
CMD ["node", "index.js"]