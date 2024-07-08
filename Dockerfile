FROM node:20.15.0-alpine3.20
RUN addgroup react && adduser -S -G react react
USER react
WORKDIR /app/
COPY --chown=react package*.json .
RUN npm install
COPY --chown=react . .
ENV API=https://apiv1.myweb.com
EXPOSE 5173
CMD ["npm", "run", "dev"]
