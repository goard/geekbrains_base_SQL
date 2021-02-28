# My create 3 table homework

# M x M
DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	comment_text TEXT,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

# M x M
# Колонка friend_user_id формируется из таблицы friends_request при статусе 'approved'
DROP TABLE IF EXISTS friends_list;
CREATE TABLE friends_list(
	id SERIAL,
	current_user_id BIGINT UNSIGNED NOT NULL,
	friend_user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (current_user_id) REFERENCES friends_requests(initiator_user_id),
	CHECK(current_user_id != friend_user_id)
);

# M x M
# Колонка block_user_id формируется из таблицы friends_request при статусе 'unfriended'
DROP TABLE IF EXISTS block_list_user;
CREATE TABLE block_list_user(
	id SERIAL,
	current_user_id BIGINT UNSIGNED NOT NULL,
	block_user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (current_user_id) REFERENCES friends_requests(initiator_user_id),
	CHECK(current_user_id != block_user_id)
);
