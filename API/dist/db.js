var Pool = require('pg').Pool;
var pool = new Pool({
    user: 'postgres',
    password: 'admin',
    host: 'localhost',
    port: 5432,
    database: 'table_widget'
});
module.exports = pool;
