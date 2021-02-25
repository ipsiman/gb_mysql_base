-- Смотрим все таблицы
SHOW TABLES;

-- Анализируем данные пользователей
SELECT * FROM users LIMIT 10;

-- Смотрим структуру таблицы пользователей
DESC users;

-- Добавляем поле username в таблицу users
ALTER TABLE users ADD username varchar(30) NOT NULL comment "Имя пользователя для входа в сервис";

-- Добавим значения username
UPDATE users SET username = CONCAT(
	(LOWER(LEFT(first_name, 1))),
	'_',
	LOWER(last_name)
);

-- Смотрим структуру профилей
DESC profiles;

-- Анализируем данные
SELECT * FROM profiles LIMIT 30;

-- Исправим пол
UPDATE profiles SET gender = 'F' WHERE gender = 'P' OR gender = 'D';

-- Исправим дату рождения
UPDATE profiles SET birthday = DATE_SUB(LAST_DAY(last_login), INTERVAL FLOOR(3700 + RAND() * 12000) DAY);

-- Исправим даты last_login и created_at
UPDATE profiles
   SET last_login=(@temp:=last_login), last_login = created_at, created_at = @temp WHERE last_login < created_at;
   

-- Смотрим структуру таблицы сообщений
DESC messages;

-- Анализируем данные
SELECT * FROM messages LIMIT 10;

-- Проверяем что пользователь не отправляет сам себе сообщение
SELECT * FROM messages WHERE from_user_id = to_user_id LIMIT 10;

-- Смотрим структуру таблицы медиаконтента 
DESC media;

-- Анализируем данные
SELECT * FROM media LIMIT 10;

-- Создаём временную таблицу форматов медиафайлов
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));

-- Заполняем значениями
INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png'), ('mp3'), ('doc');

-- Проверяем
SELECT * FROM extensions;

-- Обновляем ссылку на файл
UPDATE media SET filename = CONCAT(
  'http://cdn365.net/vk/temp/',
  FLOOR(1 + RAND() * 100),
  '/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

-- Обновляем размер файлов
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000));

-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  

-- Возвращаем столбцу метеданных правильный тип
ALTER TABLE media MODIFY COLUMN metadata JSON;


-- Анализируем типы медиаконтента
SELECT * FROM media_types;

-- Смотрим структуру таблицы дружбы
DESC friendship;

-- Анализируем данные
SELECT * FROM friendship LIMIT 30;

SELECT * FROM friendship WHERE user_id = friend_id;

-- Исправляем случай когда user_id = friend_id
UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

-- Удалим не нужный столбец
ALTER TABLE friendship DROP COLUMN requested_at;

-- Исправляем даты
UPDATE friendship
   SET created_at=(@temp:=created_at), created_at = confirmed_at, confirmed_at = @temp WHERE confirmed_at < created_at;
  
-- Анализируем данные 
SELECT * FROM friendship_statuses;

-- Очищаем таблицу
TRUNCATE friendship_statuses;

-- Вставляем значения статусов дружбы
INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
 
-- Обновляем ссылки на статус 
UPDATE friendship SET friendship_status_id = FLOOR(1 + RAND() * 3); 
  
-- Исправляем даты
UPDATE friendship SET updated_at = now() WHERE updated_at < confirmed_at;
  
-- Смотрим структуру таблицы групп
DESC communities;

-- Анализируем данные
SELECT * FROM communities;

-- Анализируем таблицу связи пользователей и групп
SELECT * FROM communities_users;

