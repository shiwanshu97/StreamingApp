FROM node:18-alpine AS production

WORKDIR /app

COPY backend/adminService/package*.json ./

RUN npm ci --omit=dev

COPY backend/adminService/ ./

ENV NODE_ENV=production

EXPOSE 3003

CMD ["npm", "start"]