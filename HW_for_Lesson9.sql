# Практическое задание по теме “Транзакции, переменные, представления”
# 1 item;
start transaction;
SELECT * from sample.users where id=1;
insert into shop2.users (name) select name FROM sample.users where id = 1;
SELECT * from shop2.users;
commit;
# 2 item
CREATE view prod as select name, (SELECT name FROM catalogs where id = catalog_id) as name_catalog from products; 
show tables;

# Практическое задание по теме “Хранимые процедуры и функции, триггеры"
# 1 item
drop function if exists hello;
delimiter //
CREATE FUNCTION hello (time_var VARCHAR(5))
RETURNS varchar(255) DETERMINISTIC
begin
	declare hours, minutes, total_minutes INT;
	set hours = CONVERT (SUBSTRING_INDEX(time_var, ':',1), UNSIGNED integer);
	set minutes = CONVERT (SUBSTRING_INDEX(time_var, ':',-1), UNSIGNED integer);
	set total_minutes = hours * 60 + minutes;
	if (total_minutes >= 0 && total_minutes < 360) then
		return 'Доброй ночи';
	end if;
	if (total_minutes >= 360 && total_minutes < 720) then
		return 'Доброе утро';
	end if;
	if (total_minutes >= 720 && total_minutes < 1080) then
		return 'Добрый день';
	end if;
	if (total_minutes >= 1080 && total_minutes < 1440) then
		return 'Добрый вечер';
	end if;
	return 'Ошибка ввода данных';
end//
delimiter ;
SELECT hello('0:0');

# 2 item
delimiter //
CREATE trigger check_products_name_and_description before INSERT on products
for each ROW
BEGIN
	set new.name = COALESCE (new.name);
	set new.description = COALESCE (new.description);
END //
delimiter ;
