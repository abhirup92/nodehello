const http = require('http');

const hostname = '0.0.0.0';
const port = 8000;
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');

  res.end('Hello World- DevOps World Sir ji!\n');


});


server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
