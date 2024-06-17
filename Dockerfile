# 使用Node.js基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制所有源代码到工作目录
COPY . .

# 暴露应用的端口
EXPOSE 8080

# 启动应用
CMD ["node", "app.js"]
