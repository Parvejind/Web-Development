mysql> SHOW DATABASES;
+-------------------------------------+
| Database                            |
+-------------------------------------+
| AUTH_DB_DEV                         |
| Blogging                            |
| BOOKING_DB_DEV                      |
| classicmodels                       |
| database_sequelize_demo_development |
| delivery_service_db                 |
| ecom_api_db_dev                     |
| ecommerce                           |
| Ecommerce_API                       |
| employee_hiring_system              |
| Entertainment                       |
| filmsdatabase                       |
| fitness_db                          |
| Flights                             |
| Flights_Search_DB_DEV               |
| information_schema                  |
| Movie                               |
| Movies_Database                     |
| mysql                               |
| performance_schema                  |
| REMINDER_DB_DEV                     |
| sys                                 |
+-------------------------------------+
22 rows in set (0.03 sec)

mysql> CREATE DATABASE MOVIES_DB_PW;
Query OK, 1 row affected (0.00 sec)

mysql> SHOW DATABASES;
+-------------------------------------+
| Database                            |
+-------------------------------------+
| AUTH_DB_DEV                         |
| Blogging                            |
| BOOKING_DB_DEV                      |
| classicmodels                       |
| database_sequelize_demo_development |
| delivery_service_db                 |
| ecom_api_db_dev                     |
| ecommerce                           |
| Ecommerce_API                       |
| employee_hiring_system              |
| Entertainment                       |
| filmsdatabase                       |
| fitness_db                          |
| Flights                             |
| Flights_Search_DB_DEV               |
| information_schema                  |
| Movie                               |
| Movies_Database                     |
| MOVIES_DB_PW                        |
| mysql                               |
| performance_schema                  |
| REMINDER_DB_DEV                     |
| sys                                 |
+-------------------------------------+
23 rows in set (0.00 sec)

mysql> USE AUTH_DB_DEV                         |
| Blogging                            |
| BOOKING_DB_DEV                      |
| classicmodels                       |
| database_sequelize_demo_development |
| delivery_service_db                 |
| ecom_api_db_dev                     |
| ecommerce                           |
| Ecommerce_API                       |
| employee_hiring_system              |
| Entertainment                       |
| filmsdatabase                       |
| fitness_db                          |
mysql> select * from actors;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
| Chris     | Evans     | Male   |      700 |
| Paul      | Rudd      | Male   |      150 |
| Brie      | Larson    | Female |      650 |
| Chadwick  | Boseman   | Male   |      400 |
+-----------+-----------+--------+----------+
7 rows in set (0.01 sec)

mysql> select * from actors limit 3 offset 2;
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Scarlett  | Johnson  | Female |      500 |
| Chris     | Evans    | Male   |      700 |
| Paul      | Rudd     | Male   |      150 |
+-----------+----------+--------+----------+
3 rows in set (0.02 sec)

mysql> select * from actors limit 3 offset 3;
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Chris     | Evans    | Male   |      700 |
| Paul      | Rudd     | Male   |      150 |
| Brie      | Larson   | Female |      650 |
+-----------+----------+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from actors limit 3 offset 5;
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Brie      | Larson   | Female |      650 |
| Chadwick  | Boseman  | Male   |      400 |
+-----------+----------+--------+----------+
2 rows in set (0.00 sec)

mysql> select * from actors limit 3 offset 15;
Empty set (0.00 sec)

mysql> select * from actors limit 3 offset 0;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
+-----------+-----------+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from actors limit 3 offset 3;
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Chris     | Evans    | Male   |      700 |
| Paul      | Rudd     | Male   |      150 |
| Brie      | Larson   | Female |      650 |
+-----------+----------+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from actors limit 3 offset 6;
+-----------+----------+--------+----------+
| Firstname | Lastname | Gender | Networth |
+-----------+----------+--------+----------+
| Chadwick  | Boseman  | Male   |      400 |
+-----------+----------+--------+----------+
1 row in set (0.00 sec)

mysql> select * from actors offset 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3' at line 1
mysql> SELECT * FROM ACTORS WHERE FIRSTNAME like "CH%";
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Hemsworth | Male   |      400 |
| Chris     | Evans     | Male   |      700 |
| Chadwick  | Boseman   | Male   |      400 |
+-----------+-----------+--------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM ACTORS WHERE FIRSTNAME like "CH%" limit 2;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Chris     | Hemsworth | Male   |      400 |
| Chris     | Evans     | Male   |      700 |
+-----------+-----------+--------+----------+
2 rows in set (0.01 sec)

mysql> select * from actors;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
| Chris     | Evans     | Male   |      700 |
| Paul      | Rudd      | Male   |      150 |
| Brie      | Larson    | Female |      650 |
| Chadwick  | Boseman   | Male   |      400 |
+-----------+-----------+--------+----------+
7 rows in set (0.00 sec)

mysql> UPDATE Actors SET Networth = 500 WHERE Firstname = "Chadwick";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from actors;
+-----------+-----------+--------+----------+
| Firstname | Lastname  | Gender | Networth |
+-----------+-----------+--------+----------+
| Johnny    | Depp      | Male   |      200 |
| Chris     | Hemsworth | Male   |      400 |
| Scarlett  | Johnson   | Female |      500 |
| Chris     | Evans     | Male   |      700 |
| Paul      | Rudd      | Male   |      150 |
| Brie      | Larson    | Female |      650 |
| Chadwick  | Boseman   | Male   |      500 |
+-----------+-----------+--------+----------+
7 rows in set (0.00 sec)
