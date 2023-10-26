# Menggunakan Node.js LTS 18 dengan versi alpine
FROM node:18-alpine 

# Menetapkan WORKDIR untuk container adalah /app
WORKDIR /app

# Menyalin berkas package.json dan package-lock.json ke workdir
COPY package*.json ./

# Menginstal bash
RUN apk add --no-cache bash

# Mengunduh wait-for-it.sh dari repositori
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

# Mengubah hak akses dari wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

# Install Depedencies
RUN npm install

# Menyalin semua berkas ke workdir
COPY . .

# Memberi Command untuk menjalankan aplikasi
CMD ["npm", "start"]
