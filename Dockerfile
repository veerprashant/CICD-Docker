FROM node:17-alpine
WORKDIR /app
COPY ReactNew/my-app/package.json ./
COPY ReactNew/my-app/package-lock.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run", "start"]

FROM nginx:1.19.0
WORKDIR /user.share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT [ "nginx","-g","daemon off;" ]