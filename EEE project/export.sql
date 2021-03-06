/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*CREATE DATABASE test1;
USE test1;*/

CREATE TABLE   attendance  (
   usn  varchar(20) NOT NULL,
   subcode  varchar(20) NOT NULL,
   ssid  int(11) NOT NULL,
   attendance  int(11) NOT NULL,
  CONSTRAINT  attendance_ibfk_1  FOREIGN KEY ( usn ) REFERENCES  student  ( usn ) ON DELETE CASCADE,
  CONSTRAINT  attendance_ibfk_2  FOREIGN KEY ( subcode ) REFERENCES  sub  ( subcode ) ON DELETE CASCADE,
  CONSTRAINT  attendance_ibfk_3  FOREIGN KEY ( ssid ) REFERENCES  semsec  ( ssid ) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  attendance  DISABLE KEYS */;
INSERT INTO  attendance  ( usn ,  subcode ,  ssid ,  attendance ) VALUES
	('1hk14CS81', '15CS62', 10, 94),
	('1hk14CS81', '15CS82', 10, 85),
	('1hk17CS01', '15CHE21', 1, 75),
	('1hk17CS01', '15ELN22', 1, 83),
	('1hk17CS01', '15PCD23', 1, 65),
	('1hk17CS02', '15CHE21', 1, 91),
	('1hk17CS04', '15CHE21', 2, 90),
	('1hk17CS04', '15MAT24', 2, 85),
	('1hk17CS04', '15PCD23', 2, 84),
	('1hk17CS05', '15MAT24', 2, 74),
	('1hk17CS11', '15CHE21', 3, 77),
	('1hk17CS07', '15CS42', 4, 95),
	('1hk16CS43', '15CS43', 4, 83),
	('ENG18CS001', '15CHE21', 1, 96);
/*!40000 ALTER TABLE  attendance  ENABLE KEYS */;

CREATE TABLE   class  (
   usn  varchar(20) NOT NULL,
   ssid  int(11) DEFAULT NULL,
  PRIMARY KEY ( usn ),
  KEY  ssid  ( ssid ),
  CONSTRAINT  class_ibfk_1  FOREIGN KEY ( ssid ) REFERENCES  semsec  ( ssid ) ON DELETE CASCADE,
  CONSTRAINT  class_ibfk_2  FOREIGN KEY ( usn ) REFERENCES  student  ( usn ) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  class  DISABLE KEYS */;
INSERT INTO  class  ( usn ,  ssid ) VALUES
	('1hk17CS01', 1),
	('1hk17CS02', 1),
	('1hk17CS03', 1),
	('1hk17CS11', 1),
	('ENG18CS001', 1),
	('1hk17CS04', 2),
	('1hk17CS05', 2),
	('1hk17CS06', 2),
	('1hk17CS07', 3),
	('1hk17CS08', 3),
	('1hk17CS09', 3),
	('1hk16CS41', 4),
	('1hk16CS42', 4),
	('1hk16CS43', 4),
	('1hk16CS44', 4),
	('1hk16CS45', 5),
	('1hk16CS46', 5),
	('1hk16CS47', 6),
	('1hk16CS48', 6),
	('1hk16CS49', 6),
	('1hk16CS50', 6),
	('1hk15CS61', 7),
	('1hk15CS62', 7),
	('1hk15CS63', 7),
	('1hk15CS64', 8),
	('1hk15CS65', 8),
	('1hk15CS67', 9),
	('1hk15CS68', 9),
	('1hk15CS69', 9),
	('1hk15CS70', 9),
	('1hk15CS71', 9),
	('1hk15CS72', 9),
	('1hk14CS81', 10),
	('1hk14CS82', 10),
	('1hk14CS83', 10),
	('1hk14CS84', 10),
	('1hk14CS85', 11),
	('1hk14CS86', 11),
	('1hk14CS87', 11),
	('1hk14CS88', 12),
	('1hk14CS89', 12),
	('1hk14CS90', 12),
	('1hk14CS91', 12),
	('1hk14CS92', 12);
/*!40000 ALTER TABLE  class  ENABLE KEYS */;

CREATE TABLE   class_adviser  (
   f_id  varchar(50) NOT NULL DEFAULT '',
   name  varchar(50) NOT NULL DEFAULT '',
   password  varchar(50) NOT NULL DEFAULT 'class_cse',
   ssid  int(11) NOT NULL,
  PRIMARY KEY ( f_id ),
  KEY  ssid  ( ssid ),
  CONSTRAINT  class_adviser_ibfk_1  FOREIGN KEY ( ssid ) REFERENCES  semsec  ( ssid ) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  class_adviser  DISABLE KEYS */;
INSERT INTO  class_adviser  ( f_id ,  name ,  password ,  ssid ) VALUES
	('cs2a', 'abijeet banerji', 'class_cse', 1),
	('cs2b', 'abraham verghese', 'class_cse', 2),
	('cs2c', 'aijaz ahmad', 'class_cse', 3),
	('cs4a', 'amartya sen', 'class_cse', 4),
	('cs4b', 'anindya sinha', 'class_cse', 5),
	('cs4c', 'arvind panagariya', 'class_cse', 6),
	('cs6a', 'B A saletore', 'class_cse', 7),
	('cs6b', 'bipin chandra', 'class_cse', 8),
	('cs6c', 'gunvant shah', 'class_cse', 9),
	('cs8a', 'jagadish bhagwati', 'class_cse', 10),
	('cs8b', 'jayati josh', 'class_cse', 11),
	('cs8c', 'manju jaidka', 'class_cse', 12);
/*!40000 ALTER TABLE  class_adviser  ENABLE KEYS */;

CREATE TABLE  final_ia  (
	 usn  VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	 subcode  VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	 final_m  DECIMAL(19,8) NULL
) ENGINE=MyISAM;

CREATE TABLE   iamarks  (
   usn  varchar(20) DEFAULT NULL,
   subcode  varchar(20) DEFAULT NULL,
   ssid  int(11) DEFAULT NULL,
   test1  int(11) DEFAULT NULL,
   test2  int(11) DEFAULT NULL,
   test3  int(11) DEFAULT NULL,
   final  int(11) DEFAULT NULL,
  KEY  usn  ( usn ),
  KEY  subcode  ( subcode ),
  KEY  ssid  ( ssid ),
  CONSTRAINT  iamarks_ibfk_1  FOREIGN KEY ( usn ) REFERENCES  student  ( usn ) ON DELETE CASCADE,
  CONSTRAINT  iamarks_ibfk_2  FOREIGN KEY ( subcode ) REFERENCES  sub  ( subcode ) ON DELETE CASCADE,
  CONSTRAINT  iamarks_ibfk_3  FOREIGN KEY ( ssid ) REFERENCES  semsec  ( ssid ) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  iamarks  DISABLE KEYS */;
INSERT INTO  iamarks  ( usn ,  subcode ,  ssid ,  test1 ,  test2 ,  test3 ,  final ) VALUES
	('1hk17CS01', '15PCD23', 1, 10, 12, 14, 13),
	('1hk17CS01', '15CHE21', 1, 11, 12, 13, 13),
	('1hk17CS01', '15ELN22', 1, 13, 14, 15, 15),
	('1hk17CS01', '15MAT24', 1, 16, 17, 18, 18),
	('1hk16CS41', '15CS42', 4, 19, 20, 19, 20),
	('1hk16CS41', '15CS43', 4, 20, 20, 20, 20),
	('1hk16CS41', '15CS44', 4, 7, 9, 10, 10),
	('1hk16CS41', '15CS46', 4, 10, 15, 20, 18),
	('1hk15CS61', '15CS61', 7, 8, 12, 16, 14),
	('1hk15CS61', '15CS62', 7, 9, 13, 17, 15),
	('1hk15CS61', '15CS63', 7, 10, 14, 18, 16),
	('1hk15CS61', '15CS64', 7, 11, 15, 19, 17),
	('1hk14CS81', '15CS81', 10, 16, 14, 20, 18),
	('1hk14CS81', '15CS82', 10, 20, 12, 13, 17),
	('1hk14CS81', '15CS834', 10, 15, 16, 20, 18),
	('1hk14CS81', '15CS86', 10, 20, 19, 18, 20),
	('1hk14CS82', '15CS81', 10, 12, 15, 18, 17),
	('1hk14CS82', '15CS82', 10, 13, 20, 12, 17),
	('1hk14CS82', '15CS834', 10, 15, 16, 10, 16),
	('1hk14CS82', '15CS86', 10, 12, 9, 8, 11),
	('1hk14CS83', '15CS81', 10, 2, 5, 8, 7),
	('1hk14CS83', '15CS82', 10, 3, 12, 2, 8),
	('1hk14CS83', '15CS834', 10, 5, 6, 10, 8),
	('1hk14CS83', '15CS86', 10, 2, 19, 18, 19),
	('1hk14CS84', '15CS81', 10, 12, 15, 8, 14),
	('1hk14CS84', '15CS82', 10, 13, 0, 1, 7),
	('1hk14CS84', '15CS834', 10, 15, 6, 1, 11),
	('1hk14CS84', '15CS86', 10, 2, 19, 8, 14),
	('1hk14CS85', '15CS81', 11, 12, 5, 11, 12),
	('1hk14CS85', '15CS82', 11, 13, 2, 13, 13),
	('1hk14CS85', '15CS834', 11, 14, 16, 19, 18),
	('1hk14CS85', '15CS86', 11, 2, 14, 8, 11),
	('1hk14CS86', '15CS81', 11, 12, 14, 13, 14),
	('1hk14CS86', '15CS82', 11, 3, 2, 5, 4),
	('1hk14CS86', '15CS834', 11, 4, 6, 9, 8),
	('1hk14CS86', '15CS86', 11, 13, 17, 18, 18),
	('1hk14CS87', '15CS81', 11, 13, 15, 19, 17),
	('1hk14CS87', '15CS82', 11, 11, 2, 20, 16),
	('1hk14CS87', '15CS834', 11, 11, 10, 6, 11),
	('1hk14CS87', '15CS86', 11, 12, 4, 15, 14),
	('1hk14CS88', '15CS81', 12, 9, 13, 19, 16),
	('1hk14CS88', '15CS82', 12, 1, 2, 20, 11),
	('1hk14CS88', '15CS834', 12, 10, 11, 12, 12),
	('1hk14CS88', '15CS86', 12, 13, 14, 15, 15),
	('1hk14CS89', '15CS81', 12, 19, 3, 9, 14),
	('1hk14CS89', '15CS82', 12, 13, 12, 20, 17),
	('1hk14CS89', '15CS834', 12, 16, 17, 18, 18),
	('1hk14CS89', '15CS86', 12, 3, 11, 15, 13),
	('1hk14CS90', '15CS81', 12, 16, 13, 19, 18),
	('1hk14CS90', '15CS82', 12, 20, 2, 20, 20),
	('1hk14CS90', '15CS834', 12, 6, 7, 20, 14),
	('1hk14CS90', '15CS86', 12, 6, 12, 5, 9),
	('1hk14CS91', '15CS81', 12, 19, 10, 20, 20),
	('1hk14CS91', '15CS82', 12, 2, 20, 20, 20),
	('1hk14CS91', '15CS834', 12, 20, 12, 15, 18),
	('1hk14CS91', '15CS86', 12, 12, 5, 20, 16),
	('1hk14CS92', '15CS81', 12, 9, 10, 20, 15),
	('1hk14CS92', '15CS82', 12, 20, 19, 19, 20),
	('1hk14CS92', '15CS834', 12, 20, 15, 13, 18),
	('1hk14CS92', '15CS86', 12, 20, 20, 20, 20),
	('1hk17CS02', '15MAT24', 1, 10, 18, 19, 19),
	('1hk17CS02', '15CHE21', 1, 10, 18, 19, 19),
	('1hk17CS02', '15ELN22', 1, 3, 5, 18, 12),
	('1hk17CS02', '15PCD23', 1, 3, 3, 3, 3),
	('1hk17CS04', '15PCD23', 2, 10, 3, 10, 10),
	('1hk17CS11', '15CHE21', 1, 19, 20, 0, 20),
	('1hk17CS11', '15MAT24', 1, 20, 19, 20, 20),
	('ENG18CS001', '15CHE21', 1, 20, 20, 0, 20);
/*!40000 ALTER TABLE  iamarks  ENABLE KEYS */;

CREATE TABLE   semsec  (
   ssid  int(11) NOT NULL,
   sem  int(11) DEFAULT NULL,
   section  char(1) DEFAULT NULL,
  PRIMARY KEY ( ssid )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  semsec  DISABLE KEYS */;
INSERT INTO  semsec  ( ssid ,  sem ,  section ) VALUES
	(1, 2, 'A'),
	(2, 2, 'B'),
	(3, 2, 'C'),
	(4, 4, 'A'),
	(5, 4, 'B'),
	(6, 4, 'C'),
	(7, 6, 'A'),
	(8, 6, 'B'),
	(9, 6, 'C'),
	(10, 8, 'A'),
	(11, 8, 'B'),
	(12, 8, 'C');
/*!40000 ALTER TABLE  semsec  ENABLE KEYS */;

CREATE TABLE   student  (
   usn  varchar(20) NOT NULL,
   sname  varchar(20) DEFAULT NULL,
   address  varchar(20) DEFAULT NULL,
   phone  varchar(10) DEFAULT NULL,
   gender  char(1) DEFAULT NULL,
  PRIMARY KEY ( usn )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  student  DISABLE KEYS */;
INSERT INTO  student  ( usn ,  sname ,  address ,  phone ,  gender ) VALUES
	('1hk14CS81', 'Athiya', 'Patna', '3131313131', 'F'),
	('1hk14CS82', 'Beema', 'New Delhi', '3232323232', 'M'),
	('1hk14CS83', 'Chitra', 'Pune', '3333333333', 'F'),
	('1hk14CS84', 'Dipika', 'Patna', '3434343434', 'F'),
	('1hk14CS85', 'Elizabeth', 'Mumbai', '2353535355', 'F'),
	('1hk14CS86', 'Fakruddin', 'Mumbai', '363663663', 'M'),
	('1hk14CS87', 'Gary', 'Bangalore', '3737373737', 'M'),
	('1hk14CS88', 'Hema', 'Kolkatta', '3838383838', 'M'),
	('1hk14CS89', 'Ishana', 'Dehradun', '3939393939', 'F'),
	('1hk14CS90', 'Jason', 'Manipal', '4040404040', 'M'),
	('1hk14CS91', 'Kirana', 'Hyderabad', '4949494949', 'F'),
	('1hk14CS92', 'Lucky', 'Chennai', '454545545', 'F'),
	('1hk15CS61', 'Arti', 'Pune', '2121212121', 'F'),
	('1hk15CS62', 'Barti', 'Delhi', '2202202201', 'F'),
	('1hk15CS63', 'Ceaser', 'Mysore', '212121212', 'M'),
	('1hk15CS64', 'Dia', 'Mysore', '222222222', 'F'),
	('1hk15CS65', 'Elmsri', 'Bangalore', '2323232323', 'M'),
	('1hk15CS67', 'Geetha', 'Bangalore', '252525252', 'F'),
	('1hk15CS68', 'Harish', 'Bangalore', '565656565', 'M'),
	('1hk15CS69', 'Iman', 'Bangalore', '2929292929', 'M'),
	('1hk15CS70', 'Jibin', 'Mysore', '990990909', 'M'),
	('1hk15CS71', 'Kruthi', 'Mysore', '6767676767', 'F'),
	('1hk15CS72', 'Lara', 'Pune', '3030303030', 'F'),
	('1hk16CS41', 'Aman', 'Manipal', '110110110', 'M'),
	('1hk16CS42', 'Barka', 'Hyderabad', '1212121212', 'F'),
	('1hk16CS43', 'Chahana', 'Chennai', '1313131313', 'F'),
	('1hk16CS44', 'Deepa', 'Coimbatore', '1414141141', 'F'),
	('1hk16CS45', 'Emad', 'Mumbai', '15151515', 'M'),
	('1hk16CS46', 'Faroq', 'Chennai', '1616161616', 'M'),
	('1hk16CS47', 'Ganga', 'Coimbatore', '17171717', 'F'),
	('1hk16CS48', 'Hemalatha', 'Hyderabad', '1818181818', 'F'),
	('1hk16CS49', 'Inder', 'Bangalore', '1919191919', 'M'),
	('1hk16CS50', 'Jamal', 'Patna', '2202020202', 'M'),
	('1hk17CS01', 'Ajith', 'Bangalore', '1010101010', 'M'),
	('1hk17CS010', 'Jay', 'Sikkim', '111110000', 'M'),
	('1hk17CS02', 'Barat', 'Mysore', '2020202020', 'M'),
	('1hk17CS03', 'Clara', 'Delhi', '303030303', 'F'),
	('1hk17CS04', 'Denis', 'Pune', '4040404040', 'M'),
	('1hk17CS05', 'Elisa', 'Patna', '505050505', 'F'),
	('1hk17CS06', 'Franc', 'Mumbai', '6060606060', 'M'),
	('1hk17CS07', 'Gaury', 'Bangalore', '77777777', 'F'),
	('1hk17CS08', 'Harry', 'Kolkatta', '88888870', 'M'),
	('1hk17CS09', 'Isaac', 'Dehradun', '9090909090', 'M'),
	('1hk17CS11', 'lalith sagar', 'bengaluru', '914814632', 'M'),
	('ENG18CS001', 'PRABHAS', 'VIZAG', '555666333', 'm');
/*!40000 ALTER TABLE  student  ENABLE KEYS */;

CREATE TABLE   sub  (
   subcode  varchar(20) NOT NULL,
   title  varchar(30) DEFAULT NULL,
   sem  int(11) DEFAULT NULL,
   credits  int(11) DEFAULT NULL,
  PRIMARY KEY ( subcode )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE  sub  DISABLE KEYS */;
INSERT INTO  sub  ( subcode ,  title ,  sem ,  credits ) VALUES
	('15CHE21', 'CHEM', 2, 4),
	('15CS42', 'SE', 4, 4),
	('15CS43', 'DAA', 4, 4),
	('15CS44', 'MP', 4, 4),
	('15CS46', 'DC', 4, 4),
	('15CS61', 'Cryptography', 6, 4),
	('15CS62', 'CGV', 6, 4),
	('15CS63', 'SS', 6, 4),
	('15CS64', 'OS', 6, 4),
	('15CS81', 'IOT', 8, 4),
	('15CS82', 'Big Data Analytics', 8, 4),
	('15CS834', 'SMS', 8, 4),
	('15CS86', 'Seminar', 8, 4),
	('15ELN22', 'Basic Electronics', 2, 4),
	('15MAT24', 'Maths', 2, 4),
	('15PCD23', 'PCD', 2, 4);
/*!40000 ALTER TABLE  sub  ENABLE KEYS */;

DROP TABLE IF EXISTS  final_ia ;
CREATE VIEW  final_ia  AS (SELECT 
        usn,
        subcode,
        GREATEST(AVG(test1 + test2) / 2,
                AVG(test1 + test3) / 2,
                AVG(test2 + test3) / 2) AS final_m
    FROM
        iamarks
    GROUP BY usn , subcode) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
