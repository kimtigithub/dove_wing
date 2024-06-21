require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql2');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const app = express();
app.use(bodyParser.json());
app.use(cors());

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD, 
  database: process.env.DB_NAME,
});

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL Database.');
});

// Secret key for JWT
const secretKey = process.env.JWT_SECRET;

// Import routes
const authRoutes = require('./routes/authRoutes')(connection, bcrypt, jwt, secretKey);
app.use('/api/auth', authRoutes);

const PORT = process.env.DB_PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
