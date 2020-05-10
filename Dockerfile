FROM node:14.2.0

# Make Nuxt reachable outside localhost
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

WORKDIR /app/frontend

COPY /nuxt-runtime-env/package*.json /nuxt-runtime-env/nuxt.config.js ./

RUN npm install

COPY /nuxt-runtime-env ./

RUN npm run build

CMD ["npm", "run", "start"]
