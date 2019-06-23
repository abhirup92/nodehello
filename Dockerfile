FROM node:7
COPY . /src
RUN cd /src && npm install
EXPOSE 8000
CMD ["node", "/src/node-hello/app.js"]
