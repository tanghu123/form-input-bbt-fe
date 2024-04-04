FROM node:latest

# 设置工作目录
WORKDIR /usr/src/app

# 将依赖项安装到容器中
COPY package*.json ./
RUN npm install

# 将应用程序源代码复制到容器中
COPY . .

# 构建 Next.js 应用程序
RUN npm run build

# 暴露端口
EXPOSE 3000

# 运行 Next.js 应用程序
CMD ["npm", "start"]