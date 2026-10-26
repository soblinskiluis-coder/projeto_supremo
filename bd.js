//npm i mysql2
const mysql = require("mysql2/promise")



const pool = mysql.creatPool({
 host: "127.0.0.1",
 port: 3306,
 user: "root",
 password: "escola", 
databased: "soblins_BD"
})

module.exports = Object.freeze({
  pool: pool


})