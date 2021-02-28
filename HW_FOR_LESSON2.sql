/*
 * Задание 1
 * Базу данных установил
 * Добавил в домашнюю директорию конфигурационный файл
 * .my.cnf
 * [client]
 * user=root
 * password=****
 */
-- Задание 2
-- Создание базы данных example
CREATE DATABASE IF NOT EXISTS example;
-- Удалить таблицу users если существует
DROP TABLE IF EXISTS users;
-- Создание таблицы users со столбцами
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Таблица пользователей';
-- INSERT INTO users (name) VALUES ('Ayur');
-- SELECT * FROM  users;

/* 
 * Задание 3
 * Сделать дамп в командной строке
 * root$ mysqldump example > example.sql
 * Восстановить дамп с созданием базы данных sample в командной строке
 * root$ mysql --execute='CREATE DATABASE IF NOT EXISTS sample;' | mysql sample < example.sql
 * 
 * Задание 4 
 * Дамп выполнять в командной строке
 * root$ mysqldump --opt --where='1 limit 100' mysql help_keyword > mysql_help.sql
 */
