FROM node
EXPOSE 3000

ADD package.json /app/package.json
WORKDIR /app
RUN npm ci --production

ADD . /app

HEALTHCHECK --start-period=30s CMD curl --fail http://localhost:8000/ || exit 1

ENTRYPOINT [ "npm", "start" ]