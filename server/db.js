const Pool = require('pg').Pool

const pool = new Pool({
  user: "labber",
  password: "labber",
  host: "localhost",
  port: 5432,
  database: "jwttutorial"
});

module.exports = pool;