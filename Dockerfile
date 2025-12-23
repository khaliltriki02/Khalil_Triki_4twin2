# Use Node.js LTS version
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and node_modules
# Note: Copying node_modules directly due to npm build constraints in CI environment
# In production, prefer: COPY package*.json ./ && RUN npm ci --omit=dev
COPY package*.json ./
COPY node_modules ./node_modules

# Copy application files
COPY src/ ./src/

# Expose port
EXPOSE 3000

# Set environment to production
ENV NODE_ENV=production

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000/health', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

# Run the application
CMD ["node", "src/server.js"]
