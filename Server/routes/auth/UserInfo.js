const router = require("express").Router();
const { ibmdb, connStr } = require("../../utils/dbconfig");

router.get("/user/:name", async (req, res) => {
  const { name } = req.params;

  ibmdb.open(connStr).then((conn) => {
    conn
      .query(
        `SELECT id, name, phone, address FROM users WHERE name = '${name}'`
      )
      .then((data) => {
        res.status(200).json({
          message: data,
          success: true,
        });
      })
      .catch((err) =>
        res.status(500).json({
          message: `${err}`,
          success: false,
        })
      );
    conn.closeSync();
  });
});

module.exports = router;
