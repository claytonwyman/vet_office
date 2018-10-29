CREATE TABLE 'animal' (
 'IDanimal' int(11) NOT NULL AUTO_INCREMENT,
 'species' varchar(50) NOT NULL,
 'name' varchar(50) DEFAULT NULL,
 'gender' varchar(1) NOT NULL,
 'yearBorn' varchar(4) DEFAULT NULL,
 'entrant' varchar(50) NOT NULL,
 'IDcustomer' int(11) DEFAULT NULL,
 PRIMARY KEY ('IDanimal'),
 KEY 'secondaryKey' ('IDcustomer'),
 CONSTRAINT 'secondaryKey' FOREIGN KEY ('IDcustomer') REFERENCES 'customer' ('IDcustomer')
) ENGINE=InnoDB DEFAULT CHARSET=latin1
