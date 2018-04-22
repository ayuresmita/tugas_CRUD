
Setting environment for using XAMPP for Windows.
Ayu Resmitasari@DESKTOP-M5R1GGE c:\xampp1
# cd mysql\bin

Ayu Resmitasari@DESKTOP-M5R1GGE c:\xampp1\mysql\bin
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 2
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.00 sec)

MariaDB [(none)]> CREATE DATABASE butel;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> GRANT ALL PRIVILAGES
    -> ON butel.*
    -> TO 'user'@'localhost'
    -> IDENTIFIED BY 'rahasia'
    -> WITH GRANT OPTION;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'PRIVILAGES
ON butel.*
TO 'user'@'localhost'
IDENTIFIED BY 'rahasia'
WITH GRANT O' at line 1
MariaDB [(none)]> GRANT ALL PRIVILEGES
    -> ON butel.*
    -> TO 'user'@'localhost'
    -> IDENTIFIED BY 'rahasia'
    -> WITH GRANT OPTION;
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> quit
Bye

Ayu Resmitasari@DESKTOP-M5R1GGE c:\xampp1\mysql\bin
# SHOW DATABASES;
'SHOW' is not recognized as an internal or external command,
operable program or batch file.

Ayu Resmitasari@DESKTOP-M5R1GGE c:\xampp1\mysql\bin
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.30-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| butel              |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> USE butel;
Database changed
MariaDB [butel]> SHOW TABLES;
Empty set (0.00 sec)

MariaDB [butel]> CREATE TABLE bukutelepon(
    ->
    -> quit
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [butel]> CREATE TABLE bukutelepon( id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, nama VARCHAR(100) NOT NULL, email VARCHAR(100) NULL, tel VARCHAR(50) NULL) ENGINE=InnoDB;
Query OK, 0 rows affected (0.31 sec)

MariaDB [butel]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

MariaDB [butel]> SHOW TABLES;
+-----------------+
| Tables_in_butel |
+-----------------+
| bukutelepon     |
+-----------------+
1 row in set (0.00 sec)

MariaDB [butel]> SELECT * FROM bukutelepon;
Empty set (0.00 sec)

MariaDB [butel]> DESC bukutelepon;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama  | varchar(100) | NO   |     | NULL    |                |
| email | varchar(100) | YES  |     | NULL    |                |
| tel   | varchar(50)  | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

MariaDB [butel]> ALTER TABLE bukutelepon ADD alamat VARCHAR(100);
Query OK, 0 rows affected (0.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [butel]> DESC bukutelepon;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama   | varchar(100) | NO   |     | NULL    |                |
| email  | varchar(100) | YES  |     | NULL    |                |
| tel    | varchar(50)  | YES  |     | NULL    |                |
| alamat | varchar(100) | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

MariaDB [butel]> ALTER TABLE bukutelepon ADD jenis_kelamin VARCHAR(10);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [butel]> DESC bukutelepon;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama          | varchar(100) | NO   |     | NULL    |                |
| email         | varchar(100) | YES  |     | NULL    |                |
| tel           | varchar(50)  | YES  |     | NULL    |                |
| alamat        | varchar(100) | YES  |     | NULL    |                |
| jenis_kelamin | varchar(10)  | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

MariaDB [butel]> UPDATE bukutelepon SET nama='Edo' WHERE id=NULL;
Query OK, 0 rows affected (0.05 sec)

MariaDB [butel]> DESC bukutelepon;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama          | varchar(100) | NO   |     | NULL    |                |
| email         | varchar(100) | YES  |     | NULL    |                |
| tel           | varchar(50)  | YES  |     | NULL    |                |
| alamat        | varchar(100) | YES  |     | NULL    |                |
| jenis_kelamin | varchar(10)  | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)