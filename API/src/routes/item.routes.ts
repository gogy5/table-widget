const Router = require('express');
const router = new Router();
const itemController = require('../controller/item.controller');

router.get('/item', itemController.getItems);

module.exports = router;
