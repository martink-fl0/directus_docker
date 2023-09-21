FROM node:latest

COPY package.json .env ./

ENV ADMIN_EMAIL="admin@directus.com" ADMIN_PASSWORD="adm!n_P@$$" 

RUN npx directus bootstrap

EXPOSE 8055

CMD ["npm", "run", "start"]