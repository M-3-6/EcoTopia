const router = require("express").Router();
const { ibmdb, connStr } = require("../../utils/dbconfig");

router.post("/data/:name", async (req, res) => {
  const { name } = req.params;
  const { inlet, outlet } = req.body;

  ibmdb.open(connStr).then((conn) => {
    conn
      .query(
        `INSERT INTO ${name} (inlet, outlet, net_usage) VALUES (${inlet}, ${outlet}, ${
          inlet - outlet
        })`
      )
      .then((data) => {
        res.status(200).json({
          message: "Data Added Successfully!",
          success: true,
        });
      })
      .catch((err) => {
        res.status(500).json({
          message: `${err}`,
          success: false,
        });
      });
    conn.closeSync();
  });
});

router.get("/data/:name", async (req, res) => {
  const { name } = req.params;

  ibmdb.open(connStr).then((conn) => {
    conn
      .query(`SELECT * FROM ${name}`)
      .then((data) => {
        res.status(200).json({
          message: data,
          success: true,
        });
      })
      .catch((err) => {
        res.status(500).json({
          message: `${err}`,
          success: false,
        });
      });
    conn.closeSync();
  });
});

module.exports = router;
