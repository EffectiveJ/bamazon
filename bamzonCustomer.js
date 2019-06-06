const mysql = require("mysql");
const inquirer = require("inquirer");


const connection = mysql.createConnection({
    host: "localhost",

    port: 8030,

    user: "Jassae",

    password: "Jassae1997",
    database: "bamazon_db"
});


connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id:" + connection.threadId);
    queryAllproducts();
});

function queryAllproducts() {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].id + " | " + res[i].name + " | " + res[i].description + " | " + res[i].cost + "|" + res[i].ammount);
        }
        console.log("-----------------------------------");
    });
}
function start() {
    inquirer
        .prompt({
            name: "productId",
            type: "list",
            message: "Hey there!!!...What would you like to do?",
            choices: ["POST", "BID", "EXIT"]
        })
        .then(function (answer) {
            if (answer.postOrBid === "POST") {
                postAuction();
            }
            else if (answer.postOrBid === "BID") {
                bidAuction();
            } else {
                connection.end();
            }
        });
}


