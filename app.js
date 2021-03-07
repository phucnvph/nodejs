const express = require('express');
const path = require('path');

const app = express();
const port = 3000;

app.use('/public', express.static(path.join(__dirname, '/public')));
app.get('/user/:id', function (req, res, next) {
  console.log('Request URL:', req.originalUrl);
  console.log('ID:', req.params.id);
  if(req.params.id <= 0) {
    res.send('Dừng');
  } else{
    next();
  }
}, function (req, res, next) {
  console.log('Request Type:', req.method);
  res.send('User Info');
})

app.listen(port, () => {
  console.log(`Running Server: http://localhost:${port}`);
})