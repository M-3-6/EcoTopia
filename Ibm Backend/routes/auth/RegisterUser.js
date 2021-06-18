const router = require("express").Router();
const { ibmdb, connStr } = require("../../utils/dbconfig");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

router.post("/register", async (req, res) => {
  let { name, phone, address, password } = req.body;

  ibmdb.open(connStr).then(
    (conn) => {
      conn.query(`SELECT * FROM users WHERE name = '${name}'`).then(
        async (data) => {
          if (!data[0]) {
            const salt = await bcrypt.genSalt(12);
            password = await bcrypt.hash(password, salt);

            await conn
              .query(
                `INSERT INTO users (name, phone, address, password) VALUES ('${name}', '${phone}', '${address}', '${password}')`
              )
              .then(() => {
                const payload = {
                  user: {
                    id: password,
                  },
                };
                jwt.sign(
                  payload,
                  process.env.PRIVATE_KEY,
                  {
                    expiresIn: "24h",
                  },
                  (err, token) => {
                    if (err) {
                      res.status(404).json({
                        message: "Registration Failed!",
                        log: `${err}`,
                        success: false,
                      });
                    }
                    res.status(200).json({
                      message: "User Successfully Added",
                      token: token,
                      success: true,
                    });
                  }
                );
              })
              .then(async () => {
                await conn.query(
                  "CREATE TABLE " +
                    name +
                    " (id INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),record TIMESTAMP DEFAULT Now(),inlet INT NOT NULL,outlet INT NOT NULL,net_usage INT NOT NULL,PRIMARY KEY (id));"
                );
              })
              .catch((err) => {
                res.status(500).json({
                  message: "Registration Failed!",
                  log: `${err}`,
                  success: false,
                });
              });
          } else {
            res
              .json({
                message: "User already exists",
                success: false,
              })
              .status(400);
          }

          conn.closeSync();
        },
        (err) => {
          res.status(500).json({
            message: "Registration Failed!",
            log: `${err}`,
            success: false,
          });
        }
      );
    },
    (err) => {
      res.status(500).json({
        message: "Registration Failed!",
        log: `${err}`,
        success: false,
      });
    }
  );
});

module.exports = router;
