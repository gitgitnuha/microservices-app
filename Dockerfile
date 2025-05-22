# Gunakan image Node.js resmi
FROM node:18

# Set work directory
WORKDIR /app

# Salin dependency dan install
COPY package*.json ./
RUN npm install

# Salin seluruh source code
COPY . .

# Ekspose port
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
