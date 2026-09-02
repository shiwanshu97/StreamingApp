FROM node:18-alpine AS production

WORKDIR /app

COPY backend/chatService/package*.json ./

RUN npm ci --omit=dev

COPY backend/chatService/ ./

ENV NODE_ENV=production

EXPOSE 3004

CMD ["npm", "start"]