const router = require("express").Router();
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { ibmdb, connStr } = require("../../utils/dbconfig");

router.post("/login", async (req, res) => {
  const { name, password } = req.body;

  ibmdb
    .open(connStr)
    .then(
      (conn) => {
        conn
          .query(`SELECT password FROM users WHERE name = '${name}'`)
          .then(async (data) => {
            if (!data[0]) {
              ({
                message: "User Doesnt exists",
                success: false,
              });
            } else {
              const isMatch = await bcrypt.compare(password, data[0].PASSWORD);

              if (!isMatch)
                return res
                  .status(400)
                  .json({ message: "Incorrect Password", success: false });
              else {
                const payload = {
                  user: {
                    id: data[0].PASSWORD,
                  },
                };

                jwt.sign(
                  payload,
                  process.env.PRIVATE_KEY,
                  {
                    expiresIn: "24h",
                  },
                  (err, token) => {
                    if (err) throw err;
                    res.status(200).json({ token });
                  }
                );
              }
            }
          })
          .catch((err) => {
            res.status(500).json({
              message: "Server Error",
              log: `${err}`,
              success: false,
            });
          });
        conn.closeSync();
      },
      (err) => {
        res.status(500).json({
          message: "Registration Failed!",
          log: `${err}`,
          success: false,
        });
      }
    )
    .catch((err) => {
      res.status(500).json({
        message: "Registration Failed!",
        log: `${err}`,
        success: false,
      });
    });
});

module.exports = router;
