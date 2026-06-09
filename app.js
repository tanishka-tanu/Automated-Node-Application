const express = require("express");
const app = express();

const PORT = 3000;

// Route: Home page
app.get("/", (req, res) => {
    res.send("🚀 Hello DevOps! My Node.js app is running!");
});

// Start server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});