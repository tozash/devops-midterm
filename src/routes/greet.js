const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.render('greet', { name: '' });
});

router.post('/', (req, res) => {
  const name = req.body.name || 'Guest';
  res.render('greet', { name });
});

module.exports = router; 