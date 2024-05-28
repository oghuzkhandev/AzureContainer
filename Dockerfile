# Temel imaj olarak resmi Node.js imajını kullan
FROM node:14

# Uygulama dizinini oluştur
WORKDIR /usr/src/app

# Paket ve bağımlılıkları yükle
COPY package*.json ./

RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın çalıştırılacağı portu belirle
EXPOSE 8080

# Uygulamayı başlat
CMD [ "node", "app.js" ]
