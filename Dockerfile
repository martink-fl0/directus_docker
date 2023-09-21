FROM node:latest

COPY package.json .env bootstrap_and_start.sh ./

EXPOSE 8055

RUN chmod +x ./bootstrap_and_start.sh

CMD ["bootstrap_and_start.sh"]