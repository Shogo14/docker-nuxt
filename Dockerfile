FROM node:12.18.2

COPY package.json yarn.lock ./
RUN yarn

COPY . .
RUN yarn build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3333

CMD ["yarn", "start"]
