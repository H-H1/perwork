FROM node:22-alpine AS build-stage

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build:h5

FROM nginx:stable-alpine AS production-stage

# 复制构建产物（uni build 输出到 dist/build/h5）
COPY --from=build-stage /app/dist/build/h5 /usr/share/nginx/html

# 复制 nginx 配置（覆盖默认的 nginx.conf）
COPY ./conf.d/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
