const express = require('express'); // Import the Express.js framework
const app = express(); // Create an instance of the Express application
const port = 3000; // Define the port number for the server to listen on

// Define a route for the root URL ("/")
app.get('/', (req, res) => {
  res.send('Hello World!'); // Send "Hello World!" as the response
});

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

