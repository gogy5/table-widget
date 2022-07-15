const express = require('express');
const itemRouter = require('./routes/item.routes');
const PORT = process.env.PORT || 8080;

const app = express();

app.use('/api', itemRouter);

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));


