CREATE DATABASE papyrus;
USE papyrus;


CREATE USER 'util1'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'util2'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'util3'@'localhost' IDENTIFIED BY '1234';


GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'123.45.67.89';

GRANT select
ON papyrus
TO util2;

GRANT select
ON papyrus.fournis
TO util3;



CREATE TABLE produit (
  codart char(4) NOT NULL,
  libart varchar(30) NOT NULL,
  stkale int(11) NOT NULL,
  stkphy int(11) NOT NULL,
  qteann int(11) NOT NULL,
  unimes char(5) NOT NULL,
  PRIMARY KEY (codart)
) ;

CREATE TABLE entcom (
  numcom int(11) NOT NULL AUTO_INCREMENT, 
  obscom varchar(50) DEFAULT NULL,
  datcom timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(),
  numfou int(11) DEFAULT NULL,
  PRIMARY KEY (numcom),
  FOREIGN key (numfou) REFERENCES fournis (numfou)
) ;

CREATE TABLE ligcom (
  numcom int(11) NOT NULL,
  numlig tinyint(4) NOT NULL,
  codart char(4) NOT NULL,
  qtecde int(11) NOT NULL,
  priuni decimal(5,0) NOT NULL,
  qteliv int(11) DEFAULT NULL,
  derliv date NOT NULL,
  PRIMARY KEY (numcom,numlig),
  FOREIGN KEY (numcom) REFERENCES entcom (numcom),
  FOREIGN KEY (codart) REFERENCES produit (codart)
) ;

CREATE TABLE fournis (
  numfou int(11) NOT NULL,
  nomfou varchar(25) NOT NULL,
  ruefou varchar(50) NOT NULL,
  posfou char(5) NOT NULL,
  vilfou varchar(30) NOT NULL,
  confou varchar(15) NOT NULL,
  satisf tinyint(4) DEFAULT NULL, 
  posfou char(5) NOT null, 
  PRIMARY KEY (numfou)
) ;

CREATE TABLE vente (
  codart char(4) NOT NULL,
  numfou int(11) NOT NULL,
  delliv smallint(6) NOT NULL,
  qte1 int(11) NOT NULL,
  prix1 decimal(5,0) NOT NULL,
  qte2 int(11) DEFAULT NULL,
  prix2 decimal(5,0) DEFAULT NULL,
  qte3 int(11) DEFAULT NULL,
  prix3 decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (codart,numfou),
  FOREIGN KEY (numfou) REFERENCES fournis (numfou),
  FOREIGN KEY (codart) REFERENCES produit (codart)
) ;

CREATE INDEX Numfou ON fournis(numfou ASC);
CREATE INDEX Numfou ON entcom (Numfou ASC);