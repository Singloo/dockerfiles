FROM node:latest

EXPOSE 3000

WORKDIR /app

COPY . /app

RUN npm install -g node-gyp \
	&& cd /app \
	&&sh build.sh \
	&&cd src/sdk/tools \
	&&cp ffmpeg /bin/
 
CMD ["node","app.js"]
