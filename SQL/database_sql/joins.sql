SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    animal.name AS 'Pet Name',
    animal.species AS 'Species',
    animal.yearBorn AS 'Year Born',
    animal.gender AS 'Gender'
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    animal.species LIKE 'dog' AND animal.yearBorn > 2000 AND animal.gender LIKE 'F'
ORDER BY
    animal.yearBorn DESC;


SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    animal.name AS 'Pet Name',
    animal.species AS 'Species',
    animal.yearBorn AS 'Year Born',
    animal.gender AS 'Gender'
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    customer.lname LIKE '%son'
ORDER BY
    customer.lname ASC;


SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    customer.state AS 'State',
    animal.name AS 'Pet Name',
    animal.species AS 'Species',
    animal.yearBorn AS 'Year Born',
    animal.gender AS 'Gender'
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    animal.species LIKE 'cat'
    AND customer.state LIKE 'ID'
    AND animal.gender LIKE 'F'
    OR animal.species LIKE 'dog'
    AND customer.state LIKE 'ID'
    AND animal.gender LIKE 'F'
ORDER BY
    animal.species ASC,
    animal.yearBorn ASC;


#template
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "mydb"
});

con.connect(function(err) {
  if (err) throw err;


  var sql = "

";

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});


#test 1
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "mydb"
});

con.connect(function(err) {
  if (err) throw err;


  var sql = "SELECT
    customer.fname AS 'First Name',
    customer.lname AS 'Last Name',
    customer.state AS 'State',
    animal.name AS 'Pet Name',
    animal.species AS 'Species',
    animal.yearBorn AS 'Year Born',
    animal.gender AS 'Gender'
FROM
    customer
INNER JOIN
    animal
ON
    customer.IDcustomer = animal.IDcustomer
WHERE
    animal.species LIKE 'cat'
    AND customer.state LIKE 'ID'
    AND animal.gender LIKE 'F'
    OR animal.species LIKE 'dog'
    AND customer.state LIKE 'ID'
    AND animal.gender LIKE 'F'
ORDER BY
    animal.species ASC,
    animal.yearBorn ASC
";

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});
