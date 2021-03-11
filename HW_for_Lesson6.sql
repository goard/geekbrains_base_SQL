# 1 item
# Первая команда не рабочая хотя логически должен сработать. Почему не выдает результат?
SELECT COUNT(*) as total, from_user_id as send_message from messages WHERE to_user_id = 1 GROUP BY send_message HAVING MAX(total);
SELECT count(*) as total, from_user_id as send_message from messages where to_user_id = 1 GROUP BY send_message ORDER by total desc limit 1;
# 2 item 
select count(*) as total_likes from likes where user_id in (SELECT user_id from profiles where timestampdiff(YEAR,birthday,NOW()) < 10);
# 3 item 
# Получилось выполнить только с помощью join
# SELECT COUNT(*), user_id as user, (SELECT gender from profiles where user_id = user) as gender from likes group by user;
SELECT count(*) as total_like,
	case (b.gender)
		when 'M' then 'мужчины'
		when 'W' then 'женщины'
	end as gender
	from likes a 
	inner join profiles b on b.user_id = a.user_id	
	GROUP by b.gender;
