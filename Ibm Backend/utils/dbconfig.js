const ibmdb = require("ibm_db");
require("dotenv").config();

const connStr = `DATABASE=${process.env.DATABASE};HOSTNAME=${process.env.DB_HOST};UID=${process.env.DB_USERNAME};PWD=${process.env.DB_PASSWORD};PORT=${process.env.DB_PORT};PROTOCOL=TCPIP`;

module.exports = { ibmdb, connStr };
