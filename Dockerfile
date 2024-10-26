FROM node:alpine

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm config set registry https://registry.npmmirror.com/

RUN npm install -g @angular/cli --verbose

RUN npm install

COPY . /usr/src/app



CMD ["ng", "serve", "--host", "0.0.0.0"]