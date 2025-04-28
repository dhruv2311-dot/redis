# 1. Base image le rahe hain (node:18 LTS)
FROM node:18

# 2. Container ke andar ek working directory banayenge
WORKDIR /app

# 3. package.json aur package-lock.json copy karenge
COPY package*.json ./

# 4. Dependencies install karenge
RUN npm install

# 5. Baaki sab code copy karenge
COPY . .

# 6. App ke andar jo PORT use ho raha hai wo expose karenge (assume 3000)
EXPOSE 6379

# 7. App start karenge
CMD ["node", "app.js"]
