FROM node:20-alpine
WORKDIR /app/api

# если нет package-lock.json, оставь install:
COPY api/package*.json ./
RUN npm install --omit=dev
# (если сделал lock-файл — можно использовать: RUN npm ci --only=production)

COPY api/ .

EXPOSE 3000
ENV PORT=3000

# главное — запускать bin/www (как в package.json → "start")
CMD ["npm","start"]
# или: CMD ["node","./bin/www"]
