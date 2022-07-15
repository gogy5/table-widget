var Router = require('express');
var router = new Router();
var itemController = require('../controller/item.controller');
router.get('/item', itemController.getItems);
module.exports = router;
