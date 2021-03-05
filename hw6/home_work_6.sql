-- HW-6

-- 1. Создать и заполнить таблицы лайков и постов.
-- Сделал таблицы лайков и постов, лайки заполнил скриптом с урока,
-- для таблицы постов сгенерировал данные - posts_data.sql


-- 2. Создать все необходимые внешние ключи и диаграмму отношений.
-- Смотрим структуру таблицы
DESC profiles;

-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

-- Смотрим структуру таблицы
DESC messages;

-- Добавляем внешние ключи
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

SHOW tables;
-- Смотрим структуру таблицы
DESC communities;
DESC communities_users;

-- Добавляем внешние ключи
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

DESC media;
DESC media_types;

ALTER TABLE media
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id),
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

DESC posts;
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id) ON DELETE CASCADE,
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id) ON DELETE CASCADE;
   
DESC likes;
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_messages_fk 
    FOREIGN KEY (target_id) REFERENCES messages(id),
  ADD CONSTRAINT likes_target_id_users_fk 
    FOREIGN KEY (target_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_id_media_fk 
    FOREIGN KEY (target_id) REFERENCES media(id),
  ADD CONSTRAINT likes_target_id_posts_fk 
    FOREIGN KEY (target_id) REFERENCES posts(id),
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   
DESC friendship;
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friendship_status_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);


-- Если нужно удалить
ALTER TABLE likes DROP FOREIGN KEY likes_target_id_users_fk;



-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	IF(
		(SELECT COUNT(id)
	  FROM likes
	 	WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'M'))
	 	<
	 	(SELECT COUNT(id)
	  FROM likes
	 	WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'F')),
	 	'Womans lead',
	 	'Mens lead') AS status,
	(SELECT COUNT(id)
	  FROM likes
	 	WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'M')) AS 'Men Likes',
	(SELECT COUNT(id)
	  FROM likes
	 	WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'F'))AS 'Woman Likes'; 
	 
	 
-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей. 

-- Создаем временную таблицу и помещаем туда id самых молодых 10 аккаунтов
CREATE TEMPORARY TABLE `temp_table` (
	`id` int(11) unsigned);

INSERT INTO temp_table
	SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10;

SELECT COUNT(id)
	FROM likes WHERE target_id IN (SELECT id FROM temp_table) AND target_type_id = 2;

-- 2 вариант без временной таблицы, после подсказки в чате =)
SELECT COUNT(id)
	FROM likes 
	WHERE target_id 
	IN (SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS rr)
	AND target_type_id = 2;


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

SELECT CONCAT(first_name, ' ', last_name) AS user,
  (SELECT COUNT(id) FROM posts WHERE posts.user_id = users.id) +
  (SELECT COUNT(id) FROM likes WHERE likes.user_id = users.id) +
  (SELECT COUNT(id) FROM media WHERE media.user_id = users.id) +
  (SELECT COUNT(id) FROM messages WHERE messages.from_user_id = users.id) AS total
    FROM users
    ORDER BY total
    LIMIT 10;

