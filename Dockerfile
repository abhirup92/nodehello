FROM node:7
COPY . /src
RUN cd /src && npm install
EXPOSE 8000
CMD ["node", "/src/app.js"]
