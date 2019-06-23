const http = require('http');

const hostname = '0.0.0.0';
const port = 8000;
const data = require('./data-items.json')
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  //res.end('Hello World- Vivek Devan\n');
  res.end(data-items.json);
});

app.get('/search', function (req, res) {
  res.json(data);
})

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
