const express = require('express');
const app = express();
const port = 8080;

// Basit bir endpoint
app.get('/hello', (req, res) => {
  res.send('Hello, World!');
});

// Sunucuyu başlat
app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
