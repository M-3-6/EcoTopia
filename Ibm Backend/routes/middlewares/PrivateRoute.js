const jwt = require("jsonwebtoken");

const privateRoute = (req, res, next) => {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];

  if (!token)
    return res.status(403).json({ message: "Auth Error", success: false });

  jwt.verify(token, process.env.PRIVATE_KEY, (err, user) => {
    if (err) {
      res
        .status(500)
        .send({ message: "Invalid Token", log: `${err}`, success: false });
    }

    req.user = user;

    next();
  });
};

module.exports = privateRoute;
