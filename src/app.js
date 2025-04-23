const express = require('express');
const path = require('path');
const greetRouter = require('./routes/greet');

const app = express();
const port = process.env.PORT || 5000;

// ────────────────────────────────────────────────────────────────────────────────
// 1) Parse HTML form bodies so req.body.name is defined
// ────────────────────────────────────────────────────────────────────────────────
app.use(express.urlencoded({ extended: true }));

// View engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// Routes
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

app.use('/greet', greetRouter);

// ────────────────────────────────────────────────────────────────────────────────
// 2) Enhanced error handler: log full stack and send message back in response
// ────────────────────────────────────────────────────────────────────────────────
app.use((err, req, res, next) => {
  console.error('❌ Error handler caught:', err.stack);
  // send the error message & stack back so you can debug in-browser/terminal
  res
    .status(500)
    .send(`<h1>Error:</h1><pre>${err.message}\n\n${err.stack}</pre>`);
});

if (require.main === module) {
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
}

module.exports = app; 