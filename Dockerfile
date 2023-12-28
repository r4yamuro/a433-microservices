# Menggunakan image node:18-alpine sebagai base
FROM node:18-alpine
# Menetapkan directory app sebagai directory kerja
WORKDIR /app
# Mengcopy package.json dan package-lock.json ke directory kerja
COPY package*.json ./
# Menjalankan perintah untuk menginstall depencendy
RUN npm install
# mencopy index.js ke directory kerja
COPY index.js .
# mengekspos port 3000
EXPOSE 3000
# Menjalankan proses aplikasi
CMD [ "npm", "run", "start" ]
