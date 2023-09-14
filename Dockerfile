# Menggunakan Node.js dengan tag 14 sebagai vase image
FROM node:14

# Menentukan Working Directory container ke /app
WORKDIR /app

# Menyalin isi directory di working directory saat ini
# ke Working Directory container (/app)
COPY . .

# Menetapkan aplikasi untuk berjalan di environment production dan
# menggunakan container database bernama item-db 
ENV NODE_ENV=production DB_HOST=item-db

# Melakukan instalasi depedencies aplikasi serta
# melakukan build
RUN npm install --production --unsafe-perm && npm run build

# Ekspos 8080 sebagai port yang digunakan oleh aplikasi
EXPOSE 8080

# Menjalankan server setelah container diluncurkan
CMD ["npm", "start"]