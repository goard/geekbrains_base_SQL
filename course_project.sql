drop database if exists beaty;
create database beaty;
use beaty;

drop table if exists masters;
CREATE table masters(
	id bigint unsigned not null auto_increment primary key,
	`uuid` varchar(255) not null unique,
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100) unique,
	phone bigint unsigned unique,
	passwordHash varchar(255),
	
	index idx_masters_name(firstname, lastname)
) COMMENT 'Пользователи мастера';

#Таблица картинок
DROP table if exists images;
CREATE table images(
	id serial,
	masterId bigint unsigned not null,
	filename varchar(255),
	pathFile varchar(255), 
	metadata JSON,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	foreign key (masterId) references masters(id)
);

DROP table if exists profiles;
CREATE table profiles(
	masterId bigint unsigned not null primary key,
	aboutMe TEXT,
	avatarImage bigint unsigned not null,
	homeTown varchar(255),
	address varchar(255),
	createdAt datetime default now(),
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	foreign key (masterId) references masters(id),
	foreign key (avatarImage) references images(id)
);

#Таблица категория мастера
DROP table if exists categoryMaster;
CREATE table categoryMaster(
	masterId bigint unsigned not null primary key,
	category varchar(255) COMMENT 'мастер маникюра, мастер визажист',
	createdAt datetime default now(),
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	foreign key (masterId) references masters(id)
);

#Таблица услуги мастера
DROP table if exists services;
CREATE table services(
	id serial,
	masterId bigint unsigned not null,
	nameService varchar(255),
	duration int unsigned not null COMMENT 'to seconds',
	price int unsigned,
	imgId bigint unsigned,
	createdAt datetime default now(),
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	foreign key (masterId) references masters(id),
	foreign key (imgId) references images(id)
) COMMENT 'Услуги';

#Таблица расписание работы мастера
DROP table if exists schedule;
CREATE table schedule(
	id serial,
	masterId bigint unsigned not null,
	`date` date not null,
	timeStart time not null,
	timeEnd time not null,
	breakStart time not null,
	breakEnd time not null,
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	createdAt datetime default now(),
	
	index idx_date(`date`),
	foreign key (masterId) references masters(id)
) COMMENT 'Расписание рабочего дня';

DROP table if exists clients;
CREATE table clients(
	id bigint unsigned not null auto_increment primary key,
	masterId bigint unsigned not null,
	firstName varchar(255),
	lastName varchar(255),
	email varchar(255) unique,
	phone bigint unsigned unique,
	note text,
	createdAt datetime default now()
) COMMENT 'Клиенты мастеров';

#Таблица запись на прием к мастеру
DROP table if exists booking;
CREATE table booking(
	id serial,
	masterId bigint unsigned not null,
	dateBooking date not null,
	timeBooking time not null,
	serviceId bigint unsigned not null,
	clientId bigint unsigned not null,
	status ENUM('temp', 'open', 'close'),
	createdAt datetime default now(),
	updatedAt DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	foreign key (masterId) references masters(id),
	foreign key (serviceId) references services(id),
	foreign key (clientId) references clients(id)
) COMMENT 'Запись к мастеру';

#Таблица отзывов на услуги мастера
DROP table if exists reviews;
CREATE table reviews(
	id serial,
	masterId bigint unsigned not null,
	clientId bigint unsigned not null,
	body text,
	rating tinyint(1) unsigned,
	
	foreign key (masterId) references masters(id),
	foreign key (clientId) references clients(id)
);

#Таблица обратная связи для разработчиков приложения
DROP tables if exists feedback;
CREATE table feedback(
	id serial,
	body text,
	name varchar(255),
	email varchar(255)	
);

#Наполнения таблиц данными

INSERT into masters (`uuid`, firstname, lastname, email, phone, passwordHash) values
	(uuid(), 'Екатерина', 'Стриженова', 'cat8@mail.ru', '79246787656', 'e090fbb1036e01ef9617ed4ddbc1adb7'),
	(uuid(), 'Александр', 'Невский', 'bear8@mail.ru', '79235678900', '6da6db3589a723d9211a2bd78f5bcb67'),
	(uuid(), 'Екатерина', 'Романова', 'fox5@mail.ru', '79965678904', '88bfadf1f8858b77c74683e9089b62b9'),
	(uuid(), 'Елизавета', 'Романова', 'cat87@inbox.ru', '79135678956', 'c2b0206addc374fbb2d91815855a96f2'),
	(uuid(), 'Генадий', 'Лютаев', 'dog56@hotmail.com', '79236789078', '20bdb8b76c069658eb73051ae7d6c8ef'),
	(uuid(), 'Всеволод', 'Мирный', 'fox87@gmail.com', '79146789045', '9fd02e70ef5580959e034dae449cc575'),
	(uuid(), 'Гульнара', 'Аюмова', 'cat3@mail.ru', '79245678900', '13b0ac2c27f032909744bad3ea7c8465'),
	(uuid(), 'Сэжидма', 'Бадмацыренова', 'fox24@gmail.com', '79234567890', 'cf00da9cf33e7c7a748cdc28cf5c2099'),
	(uuid(), 'Галина', 'Белокопытова', 'cat2@mail.ru', '79965643567', '9b246bc0d7c212183bebdaa6c0f8303d'),
	(uuid(), 'Рустам', 'Ниязов', 'dog7@mail.ru', '79135674565', 'c5e81a41efed21ca070c53960e9326b1')
;
	
INSERT into images (masterId, filename, pathFile, metadata)	values
	(1, 'imgAvatar', 'var/images/1', '{"autor": "Nikon", "weight": "1024kB"}'),
	(2, 'imgAvatar', 'var/images/2', '{"autor": "Nikon", "weight": "1024kB"}'),
	(3, 'imgAvatar', 'var/images/3', '{"autor": "Nikon", "weight": "1024kB"}'),
	(4, 'imgAvatar', 'var/images/4', '{"autor": "Nikon", "weight": "1024kB"}'),
	(5, 'imgAvatar', 'var/images/5', '{"autor": "Nikon", "weight": "1024kB"}'),
	(6, 'imgAvatar', 'var/images/6', '{"autor": "Nikon", "weight": "1024kB"}'),
	(7, 'imgAvatar', 'var/images/7', '{"autor": "Nikon", "weight": "1024kB"}'),
	(8, 'imgAvatar', 'var/images/8', '{"autor": "Nikon", "weight": "1024kB"}'),
	(9, 'imgAvatar', 'var/images/9', '{"autor": "Nikon", "weight": "1024kB"}'),
	(10, 'imgAvatar', 'var/images/10', '{"autor": "Nikon", "weight": "1024kB"}'),
	(1, 'img1', 'var/images/1', '{"autor": "Nikon", "weight": "1024kB"}'),
	(1, 'img2', 'var/images/1', '{"autor": "Nikon", "weight": "1024kB"}'),
	(1, 'img3', 'var/images/1', '{"autor": "Nikon", "weight": "1024kB"}'),
	(2, 'img1', 'var/images/2', '{"autor": "Nikon", "weight": "1024kB"}'),
	(2, 'img2', 'var/images/2', '{"autor": "Nikon", "weight": "1024kB"}'),
	(2, 'img3', 'var/images/2', '{"autor": "Nikon", "weight": "1024kB"}'),
	(2, 'img4', 'var/images/2', '{"autor": "Nikon", "weight": "1024kB"}')
;
	
INSERT into profiles (masterId, aboutMe, avatarImage, homeTown, address) values
	(1, 'Создаю искусство на ваших руках', 1, 'Москва', 'Академика Королева 15'),
	(2, 'Бороду брею с шиком и блеском', 2, 'Москва', 'Вавилова 16'),
	(3, 'Люблю шикарную шевелюру', 3, 'Петергоф', 'во дворце'),
	(4, 'Создаю дворянские гнездышка для Вас любимых', 4, 'Петергоф', 'где-то в Петергофе'),
	(5, 'Люблю быт и народовластие', 5, 'Турунтаево', 'в лесах Прибайкалья'),
	(6, 'Обо мне спорт и ЗОЖ ещё раз ЗОЖ', 6, 'Минск', 'Московская, 38'),
	(7, 'Брендирую вас и ваш фэйс', 7, 'Уфа', 'Мира 34'),
	(8, 'Тонтоо Нютаг', 8, 'Улан-Удэ', 'Бато-Жабая 5'),
	(9, 'Люблю кокетничать', 9, 'Георгиевское', 'Харитонова 3'),
	(10, 'Всем привет', 10, 'Казань', 'Саид-Галеева, 23')
;

INSERT into categoryMaster (masterId, category) values
	(1, 'Мастер педикюра'),
	(2, 'Брадобрей'),
	(3, 'Парикмахер'),
	(4, 'Стилист'),
	(5, 'Мастер стрижки'),
	(6, 'Брадобрей'),
	(7, 'Мастер маникюра'),
	(8, 'Косметолог'),
	(9, 'Визажист'),
	(10, 'Парикмахер')
;

INSERT into services (masterId, nameService, duration, price, imgId) values 
	(1, 'Педикюр (обработка пальчиков)', 1800, 800, 11),
	(1, 'Педикюр (обработка стопы)', 1800, 800, 12),
	(1, 'Педикюр классика без последующего покрытия', 4500, 1000, 13),
	(2, 'Стрижка бороды и усов', 2700, 700, 14),
	(2, 'Бритье опасной бритвой', 3600, 1500, 15 ),
	(2, 'Моделирования бороды', 2700, 1500, 16),
	(2, 'Тонирование седины', 3600, 1300, 17),
	(3, 'Окрашивание волос', 4500, 1500, null),
	(3, 'Укладка волос', 1620, 800, null),
	(3, 'Мелирование волос', 4500, 1100, null),
	(4, 'Анализ гардероба', 4500, 1000, null),
	(4, 'Онлайн шопинг', 10800, 8000, null),
	(5, 'Слоистая стрижка', 4500, 1000, null),
	(5, 'Стрижка боб', 4500, 1400, null),
	(5, 'Стрижка каре', 3600, 1400, null),
	(6, 'Стрижка наголо', 900, 250, null),
	(6, 'Окантовка бороды', 900, 300, null),
	(7, 'Экспресс маникюр', 900, 500, null),
	(7, 'Базовый классический маникюр', 1800, 700, null),
	(8, 'RF-лифтинг', 3600, 1500, null),
	(8, 'Ультразвуковая чистка', 1800, 700, null),
	(9, 'Дневной макияж', 2700, 1500, null),
	(9, 'Вечерний макияж', 2700, 1500, null),
	(10, 'Стрижка мужская', 2700, 300, null),
	(10, 'Стрижка женская', 3600, 800, null)
;
	
INSERT into schedule (masterId, `date`,	timeStart, timeEnd,	breakStart,	breakEnd) values
	(1, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(1, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(2, '2021-04-14', '10:00', '19:00', '13:00', '13:30'),
	(2, '2021-04-15', '10:00', '19:00', '13:00', '13:30'),
	(3, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(3, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(4, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(4, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(5, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(5, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(6, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(6, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(7, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(7, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(8, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(8, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(9, '2021-04-14', '9:00', '19:00', '13:00', '14:00'),
	(9, '2021-04-15', '9:00', '19:00', '13:00', '14:00'),
	(10, '2021-04-13', '10:00', '19:00', '13:00', '13:30'),
	(10, '2021-04-14', '10:00', '19:00', '13:00', '13:30')
;	
	
INSERT into clients (masterId, firstName, lastName, email, phone, note) values
	(1, 'Ирина', 'Сидорова', 'client11@inbox.ru', 79785674545, 'лучший клиент'),
	(1, 'Галина', 'Петрова', 'client12@inbox.ru', 79245674545, 'лучший клиент'),
	(2, 'Василий', 'Синицын', 'client21@inbox.ru', 79235674545, 'лучший клиент'),
	(2, 'Петр', 'Любимов', 'client22@inbox.ru', 79135674545, 'лучший клиент'),
	(3, 'Светлана', 'Куропаткина', 'client31@inbox.ru', 79145674545, 'лучший клиент'),
	(3, 'Лидия', 'Некрасова', 'client32@inbox.ru', 79965674545, 'лучший клиент'),
	(4, 'Елена', 'Кузнецова', 'client41@inbox.ru', 79785774545, 'лучший клиент'),
	(4, 'Мария', 'Машанова', 'client42@inbox.ru', 79785874545, 'лучший клиент'),
	(5, 'Варвара', 'Растеряева', 'client51@inbox.ru', 79785974545, 'лучший клиент'),
	(5, 'Евдокия', 'Брынзина', 'client52@inbox.ru', 79785684545, 'лучший клиент'),
	(6, 'Алексей', 'Рыбалко', 'client61@inbox.ru', 79785694545, 'лучший клиент'),
	(6, 'Денис', 'Кузнецов', 'client62@inbox.ru', 79785604545, 'лучший клиент'),
	(7, 'Ирина', 'Проскунина', 'client71@inbox.ru', 79785675545, 'лучший клиент'),
	(7, 'Любовь', 'Карнилова', 'client72@inbox.ru', 79785676545, 'лучший клиент'),
	(8, 'Валентина', 'Климова', 'client81@inbox.ru', 79785677545, 'лучший клиент'),
	(8, 'Надежда', 'Копейкина', 'client82@inbox.ru', 79785678545, 'лучший клиент'),
	(9, 'Вероника', 'Рыбкина', 'client91@inbox.ru', 79785679545, 'лучший клиент'),
	(9, 'Ангелина', 'Простая', 'client92@inbox.ru', 79785670545, 'лучший клиент'),
	(10, 'Тамара', 'Полуянова', 'client101@inbox.ru', 79785674645, 'лучший клиент'),
	(10, 'Рита', 'Рябова', 'client102@inbox.ru', 79785674745, 'лучший клиент')
;
	
INSERT into booking (masterId, dateBooking, timeBooking, serviceId, clientId, status) values
	(1, '2021-04-14', '9:00', 2, 1, 'open'),
	(1, '2021-04-14', '12:00', 3, 2, 'open'),
	(1, '2021-04-15', '14:00', 1, 1, 'open'),
	(2, '2021-04-14', '12:00', 4, 3, 'open'),
	(2, '2021-04-15', '10:00', 6, 4, 'open'),
	(3, '2021-04-14', '12:00', 8, 5, 'open'),
	(4, '2021-04-14', '12:00', 11, 8, 'close'),
	(4, '2021-04-15', '12:00', 12, 8, 'close'),
	(4, '2021-04-15', '14:00', 12, 8, 'open'),
	(5, '2021-04-14', '12:00', 13, 9, 'open'),
	(5, '2021-04-15', '12:00', 14, 10, 'open'),
	(6, '2021-04-14', '12:00', 16, 11, 'open'),
	(6, '2021-04-15', '12:00', 17, 12, 'open'),
	(7, '2021-04-14', '12:00', 18, 13, 'open'),
	(7, '2021-04-15', '12:00', 19, 14, 'close'),
	(8, '2021-04-14', '12:00', 20, 15, 'open'),
	(8, '2021-04-15', '12:00', 21, 16, 'open'),
	(9, '2021-04-14', '12:00', 22, 17, 'open'),
	(9, '2021-04-15', '12:00', 23, 18, 'open'),
	(10, '2021-04-14', '12:00', 24, 19, 'open'),
	(10, '2021-04-15', '12:00', 25, 20, 'open')
;	
	
INSERT into reviews (masterId, clientId, body, rating) values
	(1, 2, 'Нормальный мастер не хорошо и не плохо', 5),
	(2, 3, 'Отличный мастер я просто безума от его таланта', 10),
	(3, 5, 'Выше среднего', 8),
	(4, 7, 'Ниже среднего', 4),
	(5, 9, 'Нормально стригет вот только не понравилось помещение', 3),
	(6, 11, 'Хороший мастер', 8),
	(7, 13, 'Не очень то любит свое дело ', 4),
	(8, 16, 'Обожаю этого мастера', 10),
	(9, 18, 'Не стоит её посещать', 2),
	(10, 19, 'Пожалуй хороший мастер', 6)
;

INSERT into feedback (body, name, email) values
	('не могу окрыть вкладку услуги', 'Гена', 'any1@mail.ru'),
	('есть орфографическая ошибка на главной странице', 'Лена', 'any2@mail.ru'),
	('исправьте пожалуйста вход', 'Денис', 'any3@mail.ru'),
	('не отображается телефон мастера', 'Давид', 'any4@mail.ru'),
	('не могу записаться мастеру', 'Серега', 'any5@mail.ru'),
	('Всем привет возьмите меня в разработчики, я умею крестиком вышивать', 'Лера', 'any6@mail.ru')
;
	
#Представления
#Показывает количество отмененых записей, имя и фамилию клиента
CREATE view clients_close_service as
	SELECT COUNT(clients.id) as closeService, clients.firstName, clients.lastName
	from booking inner join clients on booking.clientId = clients.id 
	WHERE booking.status = 'close' GROUP by clients.id;
	
	
SELECT * FROM clients_close_service;

#Показывает общее количество отменных, открытых записей, а также имя и фамилию клиента 
CREATE view clients_show_open_and_close_service as
SELECT COUNT(c.id), c.firstName, c.lastName, b.status from booking b inner join clients c on b.clientId = c.id
	WHERE b.status = 'close'
	GROUP by c.id
UNION
SELECT COUNT(c.id), c.firstName, c.lastName, b.status from booking b inner join clients c on b.clientId = c.id
	WHERE b.status = 'open'
	GROUP by c.id
;

SELECT * from clients_show_open_and_close_service;
	
#Хранимые процедуры и тригеры
DROP procedure if exists recomendation_master_to_client;
delimiter //
CREATE procedure recomendation_master_to_client(clientsId bigint unsigned)
	begin
		declare masterIdVar, idVar bigint unsigned;
		set masterIdVar = (SELECT clients.masterId FROM clients where clients.id = clientsId);
		# мастера из одного города
		set idVar = (
		SELECT p2.masterId
		FROM profiles p1
		join profiles p2 on p1.homeTown = p2.homeTown 
		WHERE p1.masterId = masterIdVar
			and p2.masterId != masterIdVar
		# одной категории
		union
		SELECT cm2.masterId
		FROM categoryMaster cm1
		join categoryMaster cm2 on cm1.category = cm2.category 
		where cm1.masterId = masterIdVar
			and cm2.masterId != masterIdVar
		);
-- 		SELECT IN (idVar) ;
		SELECT * from reviews r where r.masterId in (idVar);
--  сортировать по рэйтингу ни могу отсортировать данные по рэйтингу мастеров
--  SELECT r.masterId FROM reviews r where r.masterId = idVar ORDER by r.rating;
	end//
delimiter ;

CALL recomendation_master_to_client(1);
-- SELECT * from reviews r where r.masterId in (2,7);

