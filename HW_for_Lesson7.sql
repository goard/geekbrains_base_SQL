# 1 item
SELECT (select name from users where id = user_id) as name_user from orders group by user_id;

# 2 item
SELECT name, (SELECT name from catalogs where id = catalog_id) as catalogs from products ;

# 3 item
SELECT (select name from cities where `from` = label) as `from`, (select name from cities where `to` = label) as `to` FROM flights;
