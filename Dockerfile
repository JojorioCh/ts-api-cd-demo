# need an OS to run my api
FROM node:18-alpine

# copy my api files to this OS
COPY . .

# install node dependencies
RUN npm install

# build my api
RUN npm run build

EXPOSE 3000

# run my api
CMD [ "npm", "start" ]