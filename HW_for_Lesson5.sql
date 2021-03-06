# Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
# 1 item
UPDATE users SET created_at = NOW(), updated_at= CURRENT_TIMESTAMP;

# 2 item
UPDATE users SET 
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i')
;
ALTER TABLE users MODIFY created_at DATETIME, MODIFY updated_at DATETIME;

# 3 item
SELECT * from storehouses_products ORDER BY `value` = 0, `value`;

# 4 item
SELECT * from users WHERE month_birthday = 'may' AND month_birthday = 'august';

#5 item
SELECT * FROM catalogs WHERE id IN (5,1,2) ORDER BY id;

# Практическое задание теме “Агрегация данных”
# 1 item
SELECT AVG(FLOOR(DATEDIFF(NOW(), birthday_at) / 365.25)) FROM users;

# 2 item
SELECT COUNT(*) as total, DATE_FORMAT(CONCAT(SUBSTRING(NOW(), 1, 4), SUBSTRING(birthday_at, 5, 6)), '%W') as day_of_week FROM users GROUP BY day_of_week;

# 3 item
SELECT ROUND(EXP(SUM(LOG(ABS(`value`)))),1) FROM additived;
