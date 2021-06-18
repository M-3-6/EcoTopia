const express = require("express");
require("dotenv").config();
const app = express();

const registerUser = require("./routes/auth/RegisterUser");
const loginUser = require("./routes/auth/LoginUser");
const userInfo = require("./routes/auth/UserInfo");

const waterData = require("./routes/water_data/HandleData");

const privateRoute = require("./routes/middlewares/PrivateRoute");

const main = () => {
  const PORT = process.env.PORT || 8000;

  app.use(express.json());

  app.get("/", (_, res) => res.send("Api working!"));

  app.use("/", registerUser);
  app.use("/", loginUser);

  app.use("/", privateRoute, userInfo);
  app.use("/user", privateRoute, waterData);

  app.listen(PORT, () => {
    console.log(`[Status] Server Running in ${PORT}`);
  });
};

main();
