# ---------- Build Stage ----------
FROM node:18

WORKDIR /app

# dependencies
COPY package*.json ./
RUN npm install

# code
COPY . .

# build (Node / Angular dono ke liye)
RUN npm run build

# app start (Node case)
CMD ["node", "index.js"]
