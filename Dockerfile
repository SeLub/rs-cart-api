
########################################
## Development
########################################
FROM node:12.20-buster as development
ENV NODE_ENV=development
WORKDIR /app
COPY package.json package-lock.lock ./
RUN npm install
COPY . .
RUN npm run build
USER
ENV PORT=8080
EXPOSE 8080

CMD ["node", "dist/main.js"]