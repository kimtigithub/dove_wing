module.exports = (connection, bcrypt, jwt, secretKey) => {
  const express = require('express');
  const router = express.Router();

  // Register a new user
  router.post('/Register', (req, res) => {
    const { FirstName, Email, Password } = req.body;
    const hash = bcrypt.hashSync(Password, 10);

    connection.query('INSERT INTO Regiser (FirstName, Email, Password) VALUES (?, ?, ?)', [FirstName, Email, hash], (err, results) => {
      if (err) throw err;
      res.json({FirstName, Email, hash });
    });
  });

  // Login
  router.post('/Login', (req, res) => {
    const { Email, Password } = req.body;

    connection.query('SELECT * FROM Register WHERE Email = ?', [Email], (err, results) => {
      if (err) throw err;
      if (results.length === 0) {
        return res.status(401).json({ message: 'User not found' });
      }

      const user = results[0];
      if (!bcrypt.compareSync(Password, user.password)) {
        return res.status(401).json({ message: 'Incorrect password' });
      }

      const token = jwt.sign({ RegisterId: user.RegisterId, email: user.Email }, secretKey, { expiresIn: '1h' });
      res.json({ token });
    });
  });

  return router;
};
