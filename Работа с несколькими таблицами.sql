1-2) SELECT employee.first_nama,  employee.last_name , city.city_name
skypro2-# FROM  employee LEFT OUTER JOIN city
skypro2-# ON  employee.city_id = city.city_id;
 first_nama | last_name | city_name
------------+-----------+-----------
 Sten       | Soyn      |
 Maik       | Tug       | USA
 Maik       | Malk      | USA
 Mishel     | Linc      | Australia
 Salli      | Djons     | Mexico
 Jon        | Soyn      |


3)  SELECT city.city_name, employee.first_nama
skypro2-# FROM  city LEFT OUTER JOIN employee
skypro2-# ON city.city_id = employee.city_id;
 city_name | first_nama
-----------+------------
 USA       | Maik
 USA       | Maik
 Australia | Mishel
 Mexico    | Salli
 England   |
 England   |

4)  SELECT *
skypro2-# FROM employee FULL OUTER JOIN city
skypro2-# ON  city.city_id  = employee.city_id;
 id | first_nama | last_name | gender | age | city_id | city_id | city_name
----+------------+-----------+--------+-----+---------+---------+-----------
  4 | Sten       | Soyn      | M      |  37 |         |         |
  5 | Maik       | Tug       | M      |  45 |       3 |       3 | USA
  1 | Maik       | Malk      | M      |  25 |       1 |       1 | USA
  2 | Mishel     | Linc      | W      |  30 |       2 |       2 | Australia
  3 | Salli      | Djons     | W      |  25 |       4 |       4 | Mexico
  6 | Jon        | Soyn      | M      |  37 |         |         |
    |            |           |        |     |         |       5 | England
    |            |           |        |     |         |       6 | England
(8 строк)

5) SELECT city_name
skypro2-# FROM city LEFT JOIN employee
skypro2-# ON city.city_id = employee.city_id
skypro2-# WHERE first_nama IS NULL
skypro2-# ORDER BY city_name;
 city_name
-----------
 England
 England
(2 строки)