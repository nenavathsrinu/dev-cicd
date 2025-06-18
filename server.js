const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

// Serve static files from "public"
app.use(express.static(path.join(__dirname, 'public')));

// API route
app.get('/api/message', (req, res) => {
  res.json({ message: "Hello from the backend!" });
});

// Start server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
