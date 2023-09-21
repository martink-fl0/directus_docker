FROM node:latest

COPY package.json .env ./


EXPOSE 8055

ENV ADMIN_EMAIL="admin@directus.com" ADMIN_PASSWORD="adm!n_P@$$" 

RUN npx directus bootstrap

CMD ["npm", "run", "start"]