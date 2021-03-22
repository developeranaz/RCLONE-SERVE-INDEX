const express = require('express');
const app = express();
const path = require('path');
const port = 8000;

app.listen(port, () => console.log(`heroku-rclone-serve listening on port ${port}!`));
