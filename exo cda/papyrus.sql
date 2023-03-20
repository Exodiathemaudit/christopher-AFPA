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
INSERT INTO entcom (`numcom`, `obscom`, `datcom`, `numfou`) 
VALUES  (70010, 'commande cadencée', '2018-04-23 15:59:51', 120),
	      (70011, 'Commande urgente', '2018-04-23 15:59:51', 540),
	      (70020, 'Commande urgente', '2018-04-23 15:59:51', 9120),
	      (70025, 'Commande urgente', '2018-04-23 15:59:51', 9150),
	      (70210, 'Commande cadencée', '2018-04-23 15:59:51', 120),
	      (70250, 'Commande cadencée', '2018-04-23 15:59:51', 8700),
	      

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

INSERT INTO ligcom (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv`) 

VALUES  (70011, 1, 'I100', 3000, 470, 3000, '2007-03-15'),
	      (70012, 2, 'I105', 2000, 485, 2000, '2007-07-05'),
	      (70013, 3, 'I108', 1000, 680, 1000, '2007-08-20'),
	      (70014, 4, 'D035', 200, 40, 250, '2007-02-20'),
	      (70015, 5, 'P220', 6000, 3500, 6000, '2007-03-31'),
	      (70016, 6, 'P240', 6000, 2000, 2000, '2007-03-31'),
	      

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
INSERT INTO fournis (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) 
VALUES (120, 'fournis', '20 rue du papier', '92200', 'papercity', 'Georges', 8),
	     (540, 'lélipse', '53 rue laisse flotter les rubans', '78250', 'Bugbugville', 'Nestor', 7),
	     (8700, 'MEDICIS', '120 rue des roses', '75014', 'marseille', 'Lison', 0),
	     (9120, 'PROMÉO', '11 rue des sports', '85100', 'La Roche sur Yon', 'Hercule', 8),
	     (9150, 'AFPA', '26 avenue des locomotives', '59987', 'country', 'Pollux', 5),
    	 (9180, 'CPAM', '68 boulevard des octets', '04044', 'Dumpville', 'Track', 0);


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