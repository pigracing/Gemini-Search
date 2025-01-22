FROM node:20-slim AS base
WORKDIR /Gemini-Search
FROM base AS prod-deps
RUN npm install

FROM base AS deploy
RUN npm run dev

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
