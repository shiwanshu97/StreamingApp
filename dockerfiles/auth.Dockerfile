FROM node:18-alpine AS production

WORKDIR /app

COPY backend/authService/package*.json ./

RUN npm ci --omit=dev

COPY backend/authService/ ./

ENV NODE_ENV=production

EXPOSE 3001

CMD ["npm", "start"]