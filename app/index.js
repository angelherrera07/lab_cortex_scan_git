// index.js
const express = require("express");
const app = express();

const PORT = 3000;

/* Vulnerabilidad intencional para el laboratorio DevSecOps */
const DB_PASSWORD = "SuperSecretPassword123";

app.get("/", (req, res) => {
  res.send("Hello from DevSecOps Cortex Lab!");
});

app.get("/health", (req, res) => {
  res.send("OK");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
