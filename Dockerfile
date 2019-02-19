# FROM node:alpine as builder
# WORKDIR '/app'
# COPY ./package.json ./
# RUN npm install
# COPY . .
# RUN npm run build

FROM nginx
EXPOSE 80
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./src/index.html /usr/share/nginx/html
#COPY --from=builder /app/build /usr/share/nginx/html