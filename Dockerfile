FROM node:20-slim
WORKDIR /app
COPY . /app
RUN ls -al /app
RUN mkdir config
COPY w_env.ts /app/server/env.ts
# 将当前目录下的所有文件复制到工作目录
#ENV NODE_ENV=production
RUN npm install
#RUN npm run build
# Start the server by default, this can be overwritten at runtime
EXPOSE 3000

CMD ["npm", "run", "dev"]
