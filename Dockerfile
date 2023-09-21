FROM node:latest

COPY package.json .env ./

EXPOSE 8055

RUN npx directus bootstrap

CMD ["npm", "run", "start"]