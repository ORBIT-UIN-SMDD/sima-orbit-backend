const express = require("express")
const app = express()
const dotenv = require("dotenv")
const bodyParser = require("body-parser")
const bcrypt = require('bcryptjs');

// import routes
const Routes = require("./app/routes")

require("./config/database/mysql")

//dotenv (.env) config
dotenv.config()

// //hash password
// async function test() {
//     const salt = await bcrypt.genSalt(10)
//     const hashingPassword = await bcrypt.hash("12345678", salt)
//     console.log(hashingPassword);
// }

// test()

//middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }))

// //routes middleware
app.use("/api", Routes)

app.listen(3000, () => {
    console.log("Server is running on example http://localhost:3000");
});
