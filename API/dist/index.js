var express = require('express');
var itemRouter = require('./routes/item.routes');
var PORT = process.env.PORT || 8080;
var app = express();
app.get('/', function (req, res) {
    res.send('Hello, Eba!');
});
// console.log('Eba');
app.use('/api', itemRouter);
app.listen(PORT, function () { return console.log("Server started on port ".concat(PORT)); });
