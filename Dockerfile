# เริ่มจาก Node.js official image
FROM node:18-alpine

# สร้าง working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start command
CMD ["node", "app.js"]