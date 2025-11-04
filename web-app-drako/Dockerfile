FROM node:18

WORKDIR /usr/src/app
COPY web/package*.json ./
RUN npm install --omit=dev

# Copy source
COPY web/ ./

EXPOSE 3000
CMD ["npm","start"]