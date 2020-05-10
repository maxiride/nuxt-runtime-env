FROM node:14.2.0

# Make Nuxt reachable outside localhost
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

WORKDIR /app/frontend

COPY /package*.json /nuxt.config.js ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "start"]
