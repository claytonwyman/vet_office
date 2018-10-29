var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "mydb"
});

con.connect(function(err) {
  if (err) throw err;


  var sql = "SELECT customer.fname AS 'First Name', customer.lname AS 'Last Name', customer.state AS 'State', animal.name AS 'Pet Name', animal.species AS 'Species', animal.yearBorn AS 'Year Born', animal.gender AS 'Gender' FROM customer INNER JOIN animal ON customer.IDcustomer = animal.IDcustomer WHERE animal.species LIKE 'cat' AND customer.state LIKE 'ID' AND animal.gender LIKE 'F' OR animal.species LIKE 'dog' AND customer.state LIKE 'ID' AND animal.gender LIKE 'F' ORDER BY animal.species ASC, animal.yearBorn ASC";

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});
