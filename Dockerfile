# stage 1

FROM node:alpine AS build
WORKDIR /app
COPY . .
RUN npm run build

# stage 2

FROM nginx:alpine
COPY --from=build /app/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /app/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html
COPY --from=build /app/dist /etc/nginx/html
EXPOSE 80
