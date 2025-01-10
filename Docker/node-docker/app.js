const express = require('express');
const app = express();

// Define a basic route
app.get('/', (req, res) => {
  res.send('Hello, Docker!');
});

// Define a port for the app to listen on
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
