const db = require('../db');

class ItemController {
    async getItems(req, res) {
        const items = await db.query('SELECT * FROM item');
        res.json(items.rows);
    }
}

module.exports = new ItemController();
