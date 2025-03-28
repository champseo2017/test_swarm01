# เริ่มจาก Node.js official image
FROM node:23-alpine

# ติดตั้ง curl สำหรับใช้ใน health check
RUN apk --no-cache add curl

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