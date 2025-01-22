FROM node:20-slim
WORKDIR /app
# 将当前目录下的所有文件复制到工作目录
COPY . .
ENV NODE_ENV=production
RUN npm install
RUN npm run build
# Start the server by default, this can be overwritten at runtime
EXPOSE 3000

CMD ["npm", "run", "start"]
