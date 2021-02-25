#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'laboriosam', '2018-07-18 12:43:06', '2013-09-22 09:11:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dicta', '2016-01-24 00:19:00', '2021-01-20 15:46:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quaerat', '2018-12-16 11:51:19', '2011-04-15 00:29:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'illum', '2019-09-14 05:24:50', '2016-02-06 00:51:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eaque', '2019-11-22 15:52:07', '2015-05-29 11:34:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'deserunt', '2013-06-06 16:46:29', '2013-05-31 14:31:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'nam', '2012-06-30 14:13:08', '2017-05-10 19:48:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'distinctio', '2011-05-18 00:13:12', '2014-08-02 04:02:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'at', '2019-07-26 21:56:19', '2014-01-09 17:45:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'et', '2017-05-29 18:43:34', '2020-04-26 02:48:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ut', '2015-10-15 08:29:51', '2012-11-30 11:34:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aliquam', '2017-12-25 15:26:13', '2019-07-02 11:17:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'aspernatur', '2014-06-03 19:31:54', '2020-03-19 20:03:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'voluptatum', '2013-12-30 20:04:29', '2014-05-09 04:03:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'totam', '2011-02-25 21:02:31', '2019-11-03 15:38:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'ratione', '2017-02-19 01:52:49', '2017-09-21 08:34:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'quo', '2016-03-28 21:24:59', '2014-04-05 10:16:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'voluptas', '2018-07-03 20:04:52', '2014-12-11 07:02:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'consequatur', '2016-09-09 17:09:56', '2011-03-06 05:10:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'laborum', '2020-05-28 11:35:53', '2014-06-16 12:18:09');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 13, '2014-03-23 21:21:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 77, '2011-11-02 12:26:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 87, '2013-12-28 14:41:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 19, '2012-06-30 23:31:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 44, '2011-05-18 07:35:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 46, '2018-10-12 06:38:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 63, '2015-11-30 00:23:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 65, '2011-07-14 22:40:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 80, '2013-05-05 22:32:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2015-05-21 09:57:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 42, '2014-12-13 00:37:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2020-08-24 13:24:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 75, '2016-05-18 02:49:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 84, '2020-01-03 22:29:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2017-09-29 16:12:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 11, '2018-09-08 17:21:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 71, '2017-08-03 04:48:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 95, '2016-08-01 11:52:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 20, '2017-07-25 23:40:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 39, '2014-08-16 04:17:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 46, '2017-09-05 12:12:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 63, '2014-03-07 05:30:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 68, '2018-01-23 16:12:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 77, '2013-10-09 05:43:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 34, '2011-11-02 12:11:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 44, '2017-04-04 23:40:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 45, '2015-02-11 21:02:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 82, '2019-09-15 09:01:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 9, '2018-05-04 01:42:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 69, '2016-09-08 00:41:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 70, '2016-01-07 10:26:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 85, '2011-07-01 13:13:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 69, '2012-02-21 17:25:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 4, '2014-12-26 02:24:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 14, '2012-12-10 15:34:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 23, '2017-08-19 17:39:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 27, '2019-03-17 22:14:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 40, '2020-04-12 18:12:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 41, '2015-02-03 17:54:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 60, '2019-09-06 08:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 84, '2012-02-20 21:29:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 17, '2012-04-18 00:57:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2020-10-17 15:53:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 49, '2016-10-31 18:02:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 53, '2014-02-18 01:56:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 61, '2015-09-15 13:00:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 91, '2012-06-30 21:42:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 4, '2012-01-18 05:34:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 15, '2015-11-28 08:04:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 39, '2019-02-24 11:57:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 46, '2013-02-25 02:18:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 74, '2013-01-01 06:06:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 76, '2019-09-07 03:51:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 20, '2013-02-15 19:48:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 28, '2020-05-06 11:39:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 36, '2017-07-23 11:32:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 80, '2018-08-25 03:23:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 87, '2017-08-24 07:58:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 9, '2012-07-28 17:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 69, '2019-07-09 10:21:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 27, '2011-03-03 13:28:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 46, '2015-12-23 20:44:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 61, '2012-04-11 01:00:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 64, '2013-07-28 19:54:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 3, '2020-09-20 09:30:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 6, '2012-06-01 21:49:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 17, '2015-02-21 02:18:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 28, '2017-06-03 00:12:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 65, '2019-08-14 17:36:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 71, '2015-02-20 02:24:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 80, '2017-04-15 02:22:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 21, '2016-10-29 02:43:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 36, '2014-06-29 02:14:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 67, '2019-12-03 10:11:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 98, '2014-04-14 10:50:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 4, '2020-11-20 20:18:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 45, '2018-03-09 01:26:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 84, '2012-06-06 03:53:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 14, '2020-11-04 22:55:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 39, '2019-03-17 01:33:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 63, '2014-05-10 20:49:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 70, '2016-05-25 01:42:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 79, '2019-12-27 07:42:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 6, '2016-10-13 10:45:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 15, '2018-10-29 03:02:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2013-07-01 07:52:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 26, '2011-10-14 20:29:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 53, '2017-04-14 11:43:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 72, '2020-06-10 20:39:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 83, '2014-01-23 01:58:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 86, '2019-05-17 19:50:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 91, '2012-05-25 04:47:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 95, '2020-04-22 10:16:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 31, '2013-04-25 19:53:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 42, '2011-07-11 10:45:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 53, '2014-06-05 01:29:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 64, '2017-03-04 19:24:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 81, '2021-01-15 03:11:05');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 79, 7, '2011-05-25 14:15:52', '2019-02-09 12:11:03', '2019-07-01 01:41:59', '2015-08-10 07:40:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 90, 4, '2020-09-18 09:36:52', '2014-01-30 15:01:25', '2011-03-17 22:51:31', '2012-06-16 18:17:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 78, 7, '2017-12-03 01:54:18', '2015-02-25 01:00:14', '2013-11-05 13:22:02', '2014-11-17 07:37:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 59, 2, '2012-03-01 20:21:20', '2016-10-16 19:26:47', '2014-01-05 04:53:49', '2012-09-15 16:34:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 47, 1, '2016-03-05 04:52:21', '2013-04-19 07:13:04', '2012-09-08 05:53:28', '2012-04-11 11:04:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 35, 3, '2015-10-10 01:53:23', '2011-11-30 10:31:43', '2013-12-13 02:13:12', '2015-12-12 02:09:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 79, 3, '2013-05-29 22:10:33', '2013-12-12 16:40:12', '2016-07-21 03:49:08', '2014-04-14 19:00:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 75, 7, '2018-06-09 02:46:01', '2013-07-14 17:12:28', '2011-08-07 07:11:38', '2016-04-02 14:31:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 78, 5, '2018-03-20 20:54:57', '2016-03-21 09:51:00', '2017-01-18 06:45:50', '2012-10-03 05:20:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 69, 5, '2017-01-20 20:39:11', '2014-04-03 04:42:59', '2013-02-18 16:12:47', '2019-07-19 18:30:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 92, 6, '2015-05-01 04:36:19', '2019-04-10 22:17:59', '2012-04-17 04:48:06', '2013-02-15 13:29:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 6, '2014-05-30 06:18:13', '2019-02-16 07:29:20', '2015-06-07 08:44:21', '2013-12-04 10:01:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 7, 8, '2013-09-22 14:02:19', '2015-05-13 18:28:22', '2011-03-15 18:38:14', '2015-07-12 17:29:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 32, 7, '2016-01-27 16:52:35', '2013-03-20 06:02:58', '2020-03-10 05:57:31', '2018-04-02 11:12:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 49, 1, '2011-11-12 08:02:03', '2019-01-18 23:25:36', '2017-05-07 12:32:47', '2013-09-18 09:32:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 58, 1, '2016-02-04 02:35:52', '2011-07-28 18:51:48', '2012-08-14 14:09:38', '2015-05-07 23:26:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 78, 2, '2018-08-26 23:35:27', '2015-01-02 01:46:06', '2018-05-27 04:54:12', '2012-05-02 07:08:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 91, 7, '2015-01-25 13:23:52', '2015-06-05 07:03:03', '2018-03-17 06:03:22', '2018-04-03 18:28:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 5, 4, '2014-01-03 04:30:54', '2014-04-29 02:45:53', '2020-05-30 05:16:49', '2016-10-09 02:26:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 16, 3, '2014-07-12 23:00:03', '2015-09-16 09:05:03', '2018-11-18 10:57:32', '2012-02-19 02:46:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 74, 5, '2017-05-31 14:06:18', '2014-08-25 07:46:31', '2014-08-29 03:44:11', '2015-05-10 03:42:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 84, 7, '2020-02-13 03:17:01', '2011-05-11 11:54:52', '2013-01-23 19:45:32', '2017-07-29 06:54:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 77, 6, '2015-12-12 20:46:53', '2015-12-21 18:40:22', '2013-04-10 21:22:03', '2015-06-05 21:36:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 27, 1, '2018-04-20 05:14:54', '2018-08-16 16:37:27', '2019-07-29 01:41:08', '2018-11-25 03:00:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 29, 4, '2017-03-22 08:18:41', '2014-02-15 10:37:29', '2016-01-28 02:49:03', '2013-04-16 14:18:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 88, 6, '2018-07-21 10:50:24', '2016-10-17 17:33:32', '2011-11-09 08:57:58', '2013-10-17 02:42:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 34, 5, '2018-09-27 09:58:23', '2013-10-05 07:57:38', '2018-08-19 01:45:12', '2013-07-15 21:54:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 87, 6, '2012-10-28 07:36:27', '2021-02-08 08:14:54', '2015-06-12 00:48:17', '2011-08-05 02:47:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 6, 2, '2015-02-28 20:54:40', '2018-06-07 18:29:32', '2015-04-12 17:57:44', '2011-03-14 13:13:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 12, 4, '2017-05-14 08:29:30', '2018-12-26 18:29:55', '2019-08-01 16:30:51', '2018-05-16 02:10:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 85, 6, '2013-08-19 16:33:55', '2015-06-30 22:43:40', '2012-06-10 17:17:17', '2019-01-30 07:34:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 56, 5, '2012-12-16 03:03:51', '2015-12-12 07:18:40', '2020-03-29 09:09:23', '2017-09-07 19:21:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 87, 1, '2015-08-15 15:32:12', '2016-04-11 19:21:14', '2019-09-30 05:56:06', '2018-06-21 19:24:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 60, 2, '2018-05-30 06:28:35', '2017-03-20 03:06:06', '2015-05-06 03:34:33', '2012-12-02 16:57:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 83, 6, '2014-03-06 03:46:37', '2013-07-18 17:08:30', '2016-03-04 19:02:53', '2020-06-04 22:27:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 50, 3, '2017-03-23 03:53:38', '2020-07-22 23:47:21', '2014-10-28 23:14:16', '2015-11-10 16:11:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 72, 1, '2019-11-30 16:50:52', '2015-11-21 23:17:31', '2016-11-13 22:12:55', '2020-10-04 18:47:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 86, 1, '2020-04-01 01:12:36', '2016-04-04 22:58:04', '2020-05-04 23:53:36', '2017-01-26 19:13:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 18, 3, '2017-02-14 09:51:16', '2018-07-14 06:19:36', '2017-09-14 09:58:23', '2013-08-13 15:20:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 43, 8, '2020-02-27 15:35:54', '2020-04-01 22:00:34', '2011-08-27 06:48:53', '2019-04-05 16:25:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 21, 5, '2017-06-05 07:36:28', '2013-12-31 00:04:22', '2020-05-12 09:06:31', '2019-06-24 00:59:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 57, 5, '2019-02-12 21:12:35', '2019-05-03 23:57:40', '2020-01-03 03:48:47', '2015-02-02 14:32:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 48, 6, '2013-01-06 07:45:26', '2017-12-11 08:02:15', '2020-11-14 20:31:08', '2017-06-13 20:12:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 91, 3, '2012-06-25 14:57:28', '2018-04-12 05:07:55', '2020-10-06 15:06:58', '2020-04-08 18:38:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 15, 2, '2013-11-17 12:25:27', '2016-02-21 05:16:45', '2020-07-09 13:28:46', '2016-12-08 15:58:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 96, 2, '2012-02-12 19:51:19', '2012-04-15 03:02:08', '2017-11-28 23:34:31', '2019-06-04 00:03:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 41, 5, '2012-12-16 12:22:26', '2013-12-22 01:12:03', '2014-03-15 03:01:39', '2014-05-01 16:56:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 96, 6, '2019-01-29 21:30:27', '2013-04-20 19:09:04', '2011-09-11 08:21:15', '2018-03-11 13:42:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 19, 8, '2019-07-14 11:32:27', '2014-10-10 17:27:55', '2015-10-10 10:46:50', '2019-12-14 13:29:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 20, 6, '2013-04-11 17:46:30', '2015-07-01 00:17:41', '2014-04-29 21:56:47', '2019-07-25 00:06:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 63, 6, '2020-02-26 02:37:54', '2020-11-27 19:29:05', '2015-03-02 23:53:11', '2017-02-09 09:32:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 77, 6, '2020-05-09 18:33:29', '2019-01-23 05:44:14', '2019-07-27 04:28:19', '2015-07-02 19:13:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 82, 6, '2015-03-20 05:35:51', '2018-01-28 02:31:30', '2020-06-27 00:23:22', '2020-06-29 05:19:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 18, 7, '2021-01-10 14:48:58', '2013-12-23 23:26:45', '2017-12-05 13:20:28', '2013-06-22 12:14:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 73, 2, '2011-09-27 20:44:04', '2015-05-27 15:47:44', '2016-02-28 17:24:30', '2016-12-07 17:33:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 3, 2, '2018-12-23 01:43:21', '2016-01-09 19:46:11', '2014-09-04 00:22:40', '2012-12-23 12:46:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 31, 5, '2012-03-30 14:28:44', '2015-05-03 16:42:28', '2014-04-21 19:58:52', '2017-08-05 20:05:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 99, 3, '2020-12-25 23:08:52', '2014-01-04 16:59:54', '2017-10-03 07:18:44', '2015-06-16 18:47:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 20, 8, '2014-06-11 19:15:44', '2016-12-19 17:36:48', '2019-10-30 16:37:24', '2011-07-25 03:11:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 33, 2, '2020-11-10 19:44:11', '2012-09-16 01:51:48', '2019-02-26 09:47:25', '2017-05-30 15:23:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 3, 2, '2019-02-20 00:51:47', '2021-02-06 23:05:04', '2011-08-30 09:09:20', '2016-06-01 14:18:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 89, 7, '2016-02-12 19:14:50', '2015-09-12 07:41:12', '2011-11-25 15:48:06', '2020-04-10 21:19:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 94, 4, '2013-03-30 03:28:27', '2018-01-10 00:00:36', '2011-12-20 11:57:09', '2018-03-15 08:38:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 91, 4, '2013-02-20 14:42:46', '2017-11-30 14:45:33', '2013-06-10 19:26:15', '2015-08-01 09:38:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 89, 1, '2019-06-08 10:19:49', '2016-12-13 07:56:14', '2015-08-25 23:05:22', '2019-05-03 20:45:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 24, 1, '2011-04-02 21:04:47', '2011-10-25 21:42:41', '2020-02-28 15:17:15', '2014-11-20 14:39:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 57, 7, '2015-06-03 20:19:43', '2012-05-17 21:34:04', '2013-06-17 00:25:17', '2016-10-18 06:36:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 91, 6, '2021-02-05 01:40:21', '2012-02-25 18:41:47', '2017-09-14 07:40:39', '2015-10-18 07:30:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 37, 3, '2013-04-20 15:42:27', '2018-11-12 20:24:42', '2012-07-19 06:43:29', '2018-12-14 22:17:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 35, 7, '2020-02-29 10:06:02', '2018-10-11 02:11:51', '2011-09-29 20:35:52', '2014-10-03 02:19:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 57, 7, '2011-05-31 04:51:31', '2012-03-05 17:04:54', '2017-07-25 23:33:25', '2015-04-04 08:50:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 74, 1, '2011-04-23 23:52:13', '2019-01-20 22:41:31', '2012-05-24 12:20:22', '2014-06-13 15:41:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 32, 8, '2011-10-19 19:10:23', '2016-08-30 06:01:41', '2012-04-19 01:54:24', '2013-12-16 14:27:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 77, 1, '2019-08-15 06:48:29', '2020-04-23 13:04:40', '2018-08-21 12:01:33', '2019-12-12 12:32:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 3, 3, '2012-03-06 21:22:23', '2015-01-01 01:14:50', '2016-11-06 14:29:30', '2014-12-06 23:38:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 95, 1, '2016-08-04 18:52:21', '2012-07-10 18:45:02', '2014-12-10 14:59:29', '2019-12-26 22:09:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 35, 2, '2016-09-13 23:08:50', '2018-12-12 11:25:48', '2019-03-09 18:44:26', '2011-05-26 13:02:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 53, 6, '2011-03-03 10:48:06', '2011-04-11 19:26:40', '2021-01-28 03:31:15', '2013-08-13 23:18:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 100, 5, '2017-05-26 22:38:07', '2013-02-14 13:12:23', '2015-02-09 23:17:37', '2020-09-10 21:26:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 23, 8, '2011-12-07 07:39:32', '2011-06-16 15:14:59', '2013-02-05 08:09:45', '2018-08-18 19:59:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 44, 7, '2012-07-23 10:43:15', '2017-11-30 02:15:55', '2012-02-10 16:21:33', '2012-05-04 02:17:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 44, 1, '2020-10-29 07:57:34', '2016-05-03 05:48:34', '2014-04-03 21:29:20', '2020-11-20 20:44:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 52, 5, '2013-05-04 06:00:07', '2015-07-07 11:54:27', '2013-06-11 15:10:07', '2014-06-01 05:03:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 45, 7, '2017-01-16 18:00:34', '2018-02-28 09:06:52', '2012-10-18 14:42:30', '2012-03-10 12:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 47, 7, '2011-06-29 08:17:14', '2019-10-26 13:41:24', '2012-07-28 07:23:57', '2020-05-31 17:28:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 26, 8, '2020-01-26 09:52:59', '2020-01-18 15:54:31', '2018-06-16 09:13:59', '2014-12-19 06:02:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 57, 1, '2017-08-22 09:45:26', '2013-11-25 02:58:50', '2017-02-02 21:53:30', '2013-02-19 02:04:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 36, 1, '2020-01-09 02:56:25', '2018-01-06 02:03:35', '2016-04-15 23:30:43', '2018-03-05 20:49:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 68, 7, '2012-03-05 13:27:39', '2020-04-21 17:34:30', '2019-09-18 23:05:14', '2016-06-06 16:51:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 22, 1, '2019-10-07 23:34:30', '2016-12-31 15:42:12', '2016-12-27 02:39:41', '2014-04-25 09:04:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 39, 5, '2019-06-21 06:47:41', '2020-07-27 06:33:21', '2017-12-02 01:15:52', '2019-02-16 17:52:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 42, 5, '2018-03-14 12:38:36', '2011-06-16 20:44:10', '2016-09-01 08:22:18', '2020-07-07 02:02:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 45, 7, '2019-03-04 08:41:22', '2018-05-29 23:44:49', '2016-03-09 23:50:22', '2017-03-04 12:01:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 69, 8, '2017-08-22 22:49:06', '2016-02-19 19:41:01', '2018-05-31 22:29:45', '2019-04-12 20:24:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 35, 1, '2015-09-10 21:34:48', '2013-06-02 21:26:02', '2014-01-27 14:18:15', '2018-01-15 00:19:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 45, 2, '2015-10-16 14:00:48', '2020-05-16 21:57:23', '2018-02-12 12:18:24', '2016-11-08 18:13:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 83, 2, '2019-08-15 13:56:16', '2019-11-15 10:38:32', '2017-02-06 22:36:06', '2020-03-21 22:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 78, 5, '2019-08-13 17:14:01', '2015-01-21 15:07:57', '2013-11-23 05:39:08', '2013-11-08 20:32:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 12, 2, '2018-09-10 12:25:58', '2014-08-18 21:38:13', '2015-02-06 07:06:10', '2015-03-26 02:59:50');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ut', '2013-10-11 06:58:16', '2018-02-24 23:55:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nam', '2015-04-05 03:31:48', '2019-11-13 05:04:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'eligendi', '2016-07-11 23:16:59', '2014-12-11 02:41:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'eveniet', '2013-09-09 23:21:40', '2012-12-14 00:12:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'est', '2018-01-19 06:22:13', '2020-04-18 00:25:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'architecto', '2019-09-18 21:37:39', '2011-04-26 18:15:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'molestiae', '2013-08-07 15:41:14', '2011-08-07 13:04:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'doloribus', '2016-12-09 14:58:49', '2014-06-10 02:48:27');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 56, 'dolor', 9, NULL, 4, '2020-03-17 10:03:46', '2012-01-04 23:06:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 80, 'blanditiis', 4, NULL, 1, '2016-01-07 12:20:01', '2016-04-24 21:01:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 82, 'vel', 9, NULL, 2, '2011-04-03 18:05:03', '2013-12-27 20:40:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 27, 'asperiores', 4, NULL, 2, '2019-02-19 18:51:41', '2017-11-09 16:46:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 89, 'assumenda', 4, NULL, 4, '2014-12-19 20:54:32', '2020-01-29 04:31:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 70, 'voluptatem', 3, NULL, 4, '2018-04-13 05:25:12', '2017-12-15 02:43:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 27, 'ullam', 8, NULL, 1, '2015-09-17 18:34:43', '2015-02-07 02:43:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 65, 'ut', 3, NULL, 3, '2020-10-21 13:48:11', '2020-08-29 14:47:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 5, 'voluptatem', 9, NULL, 1, '2015-10-19 08:28:01', '2019-04-21 04:13:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 78, 'veniam', 5, NULL, 2, '2016-12-08 03:55:13', '2013-09-27 17:45:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 28, 'est', 6, NULL, 1, '2020-10-08 10:31:22', '2016-04-16 22:39:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 70, 'nihil', 8, NULL, 3, '2013-08-13 00:48:17', '2019-02-01 10:51:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 93, 'voluptatem', 6, NULL, 4, '2018-01-05 19:59:05', '2013-11-05 04:02:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 95, 'est', 5, NULL, 3, '2011-06-06 01:59:04', '2019-07-13 18:30:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 48, 'nemo', 4, NULL, 2, '2016-08-09 14:38:04', '2018-03-01 06:16:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 23, 'voluptatem', 7, NULL, 1, '2016-07-16 14:33:32', '2012-11-09 20:10:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 18, 'rerum', 7, NULL, 1, '2021-01-13 07:22:01', '2011-09-13 15:21:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 21, 'et', 8, NULL, 4, '2016-05-13 04:50:41', '2012-03-31 06:36:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 40, 'adipisci', 6, NULL, 2, '2018-11-26 18:24:39', '2016-09-03 22:09:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 32, 'omnis', 9, NULL, 2, '2020-05-17 17:35:26', '2011-07-01 17:39:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 32, 'enim', 4, NULL, 1, '2018-03-18 20:55:40', '2012-08-06 02:56:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 16, 'harum', 8, NULL, 3, '2017-09-03 02:42:52', '2011-08-03 19:04:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 21, 'ipsum', 1, NULL, 4, '2019-10-18 03:28:46', '2016-04-10 16:59:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 29, 'inventore', 7, NULL, 1, '2011-05-22 11:24:36', '2019-05-08 00:14:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 96, 'sunt', 8, NULL, 1, '2019-03-01 22:51:54', '2015-11-12 10:02:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 66, 'et', 1, NULL, 1, '2020-11-05 19:00:01', '2018-04-29 21:05:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 19, 'at', 6, NULL, 2, '2017-09-19 03:01:04', '2016-07-24 15:04:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 75, 'provident', 5, NULL, 1, '2016-10-07 22:30:08', '2019-02-04 22:41:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 17, 'et', 2, NULL, 3, '2015-06-19 12:28:14', '2011-07-06 00:16:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 76, 'a', 7, NULL, 3, '2018-09-02 10:57:26', '2011-06-18 10:37:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 99, 'possimus', 8, NULL, 4, '2016-06-09 00:48:48', '2015-11-19 20:38:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 69, 'vitae', 5, NULL, 1, '2015-08-03 03:48:59', '2016-11-10 16:02:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 100, 'sint', 6, NULL, 4, '2016-07-16 14:31:15', '2020-02-14 21:25:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 15, 'voluptatum', 2, NULL, 2, '2013-10-26 18:55:54', '2019-04-23 21:04:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 36, 'ut', 4, NULL, 2, '2012-01-27 11:59:46', '2015-08-12 04:23:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 67, 'quia', 1, NULL, 3, '2011-09-03 06:54:46', '2011-09-11 12:51:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 46, 'eligendi', 8, NULL, 4, '2012-02-05 21:11:06', '2017-12-07 04:57:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 27, 'minima', 2, NULL, 3, '2015-02-17 23:33:34', '2017-12-15 16:33:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 62, 'facere', 9, NULL, 3, '2020-04-07 22:27:49', '2019-12-21 00:47:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 91, 'sunt', 5, NULL, 3, '2017-10-02 01:37:45', '2018-04-02 03:39:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 61, 'provident', 4, NULL, 3, '2018-08-03 07:57:47', '2018-03-20 02:45:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 80, 'ab', 7, NULL, 4, '2018-10-28 02:49:01', '2014-02-04 15:28:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 92, 'eum', 4, NULL, 3, '2020-01-19 01:14:40', '2012-04-03 20:03:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 91, 'ad', 9, NULL, 1, '2020-03-15 10:37:48', '2014-10-26 11:17:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 24, 'ut', 4, NULL, 3, '2016-01-19 05:30:31', '2012-08-27 17:18:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 72, 'qui', 5, NULL, 1, '2019-05-03 02:36:12', '2017-03-26 09:14:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 64, 'sit', 8, NULL, 2, '2016-12-17 08:59:09', '2020-05-18 16:28:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 38, 'itaque', 3, NULL, 3, '2015-10-19 11:01:05', '2014-02-04 09:44:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 29, 'ipsum', 3, NULL, 3, '2016-02-05 16:07:10', '2015-09-12 05:54:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 2, 'et', 7, NULL, 3, '2012-05-05 16:03:47', '2017-12-25 00:18:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 97, 'rerum', 6, NULL, 3, '2013-12-08 05:44:49', '2016-06-12 08:00:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 33, 'vel', 6, NULL, 2, '2012-06-18 10:07:16', '2017-12-14 19:45:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 50, 'quam', 4, NULL, 3, '2017-08-22 05:19:58', '2013-12-17 08:57:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 9, 'praesentium', 5, NULL, 1, '2019-07-11 08:35:10', '2011-08-20 13:18:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 13, 'quas', 2, NULL, 4, '2011-09-30 19:24:09', '2019-05-15 03:38:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 69, 'incidunt', 9, NULL, 3, '2014-08-12 10:03:19', '2020-07-30 14:11:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 55, 'veritatis', 9, NULL, 2, '2020-01-16 19:03:57', '2020-07-16 01:41:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 54, 'iusto', 2, NULL, 2, '2015-09-23 15:17:51', '2018-12-24 07:53:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 3, 'quos', 6, NULL, 2, '2017-03-02 22:41:49', '2011-12-07 12:35:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 54, 'quos', 5, NULL, 2, '2012-09-15 08:38:21', '2011-10-23 16:51:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 11, 'nam', 7, NULL, 2, '2016-02-03 07:33:06', '2011-10-04 15:53:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 49, 'enim', 2, NULL, 3, '2020-07-05 20:09:28', '2020-11-17 06:19:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 66, 'doloremque', 1, NULL, 4, '2013-04-24 14:40:49', '2013-05-07 13:18:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 38, 'repudiandae', 5, NULL, 4, '2018-10-09 21:42:43', '2014-08-23 11:05:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 39, 'sed', 6, NULL, 2, '2013-07-07 09:23:57', '2020-11-04 08:58:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 59, 'quis', 2, NULL, 2, '2018-06-29 21:26:12', '2013-10-05 07:17:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 8, 'vitae', 7, NULL, 4, '2016-06-09 03:15:11', '2011-05-18 16:26:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 78, 'in', 6, NULL, 3, '2020-02-03 21:03:56', '2012-04-22 18:48:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 49, 'consequatur', 8, NULL, 4, '2019-01-20 18:33:26', '2016-08-27 15:37:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 69, 'id', 7, NULL, 3, '2015-02-01 22:44:33', '2019-08-19 21:51:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 84, 'perferendis', 4, NULL, 2, '2015-05-30 19:03:14', '2015-10-21 23:54:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 36, 'qui', 6, NULL, 2, '2020-04-03 17:43:53', '2018-12-18 18:32:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 85, 'illum', 7, NULL, 4, '2012-06-06 15:05:11', '2016-08-14 07:03:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 85, 'qui', 3, NULL, 4, '2015-10-18 18:46:38', '2013-03-31 06:14:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 34, 'sunt', 1, NULL, 2, '2012-10-15 10:18:30', '2021-01-01 19:04:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 15, 'magnam', 7, NULL, 2, '2014-01-21 09:51:42', '2017-01-18 10:02:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 63, 'ea', 6, NULL, 3, '2018-04-14 22:24:24', '2017-07-23 14:48:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 19, 'rerum', 5, NULL, 2, '2012-10-15 21:48:45', '2011-06-23 04:04:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 50, 'iusto', 3, NULL, 3, '2016-01-15 07:52:38', '2019-03-24 23:30:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 22, 'qui', 7, NULL, 4, '2020-11-17 06:02:31', '2015-03-31 04:14:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 97, 'eaque', 8, NULL, 4, '2014-08-27 13:00:14', '2015-03-13 14:20:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 24, 'nulla', 7, NULL, 1, '2020-04-07 04:50:32', '2020-04-15 03:41:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 71, 'facere', 3, NULL, 1, '2012-02-25 20:30:10', '2018-10-04 21:10:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 62, 'doloremque', 7, NULL, 1, '2014-08-30 11:22:06', '2015-04-29 02:57:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 86, 'voluptas', 5, NULL, 2, '2020-06-11 09:18:05', '2018-02-27 13:55:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 81, 'eaque', 1, NULL, 3, '2012-12-24 14:49:47', '2011-03-11 13:37:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 67, 'voluptatem', 5, NULL, 1, '2018-11-22 14:51:50', '2019-03-03 14:15:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 9, 'sapiente', 8, NULL, 3, '2016-09-19 15:03:07', '2019-12-21 17:11:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 5, 'deserunt', 6, NULL, 4, '2020-11-08 00:36:27', '2018-12-15 11:21:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 39, 'impedit', 3, NULL, 2, '2017-10-29 12:20:15', '2015-11-30 11:49:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 30, 'architecto', 9, NULL, 3, '2018-12-14 14:28:35', '2018-02-05 12:01:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 83, 'ut', 1, NULL, 4, '2012-08-16 20:57:48', '2012-06-19 20:13:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 17, 'eos', 8, NULL, 1, '2018-10-19 03:15:51', '2016-05-02 09:44:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 20, 'temporibus', 3, NULL, 3, '2013-07-28 13:39:45', '2012-04-07 00:45:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 58, 'quasi', 8, NULL, 2, '2016-03-31 19:15:57', '2019-01-14 04:11:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 55, 'unde', 4, NULL, 3, '2013-10-22 09:24:46', '2012-07-11 19:21:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 22, 'qui', 2, NULL, 4, '2011-10-30 07:26:50', '2019-01-18 21:31:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 59, 'porro', 1, NULL, 4, '2017-01-23 12:56:17', '2013-07-26 08:19:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 79, 'esse', 8, NULL, 1, '2018-08-30 11:19:15', '2017-08-03 01:04:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 12, 'sit', 1, NULL, 3, '2012-05-08 18:04:28', '2020-12-22 14:48:37');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'image', '2013-07-20 04:22:39', '2021-02-12 09:53:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'document', '2011-04-09 11:10:32', '2016-11-28 03:58:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'music', '2018-10-26 14:42:10', '2015-09-13 05:29:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'video', '2017-03-28 19:14:07', '2019-02-07 11:01:19');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 76, 57, 'Debitis deleniti cumque laborum cupiditate. Aut cum et et et voluptas. Fuga est sed voluptatem consequuntur vel enim. Dolore dolorem inventore aut et laboriosam ut vel a.', 0, 0, '2018-03-17 22:16:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 47, 69, 'Laboriosam tempora aut qui in minima. Nihil minima eveniet in voluptatem omnis ut. Quis voluptas impedit quos tempora. Blanditiis tempora repellat sed nulla.', 1, 1, '2016-07-29 02:54:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 20, 95, 'Qui architecto et ut provident ipsa minima. Quod sapiente sed iste aut. Amet magnam consequuntur omnis voluptate cum voluptatem. Quae minima et qui sit quis praesentium.', 0, 0, '2015-04-27 02:51:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 8, 59, 'Dolore commodi occaecati eius saepe id eligendi. Atque natus nostrum ab iure cupiditate accusantium cum. Velit natus veritatis omnis voluptas. Atque minima similique molestias ratione accusamus. Nam possimus iste voluptatem minima.', 0, 1, '2013-08-16 07:28:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 53, 66, 'Et incidunt dolores quia alias fuga cupiditate accusamus. Ipsa quibusdam quia provident qui dolore et. Aut occaecati et enim est ipsa. Qui repellendus facere esse rerum quo at.', 1, 0, '2014-09-13 10:50:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 97, 84, 'Est soluta et corrupti at vel qui laborum. Labore suscipit omnis enim sint sunt. Voluptate et voluptas necessitatibus nulla est quo. Doloremque minus tempora delectus rerum consequuntur soluta earum ea.', 0, 0, '2018-04-10 21:21:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 39, 90, 'Suscipit at cumque corrupti voluptatem iste sit. Veritatis mollitia repellat et consequuntur hic et.', 0, 0, '2019-07-10 10:04:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 16, 30, 'Dolores et tempora natus impedit iste dicta nulla. In aut quis nemo in repudiandae. Tempore voluptatibus omnis aut sequi expedita pariatur dolorum.', 1, 1, '2018-09-09 14:55:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 70, 32, 'Nulla ut nesciunt laborum earum hic ut eius. Ratione et rerum aut exercitationem omnis laboriosam. Suscipit quia illo dolorem recusandae voluptas possimus quae. Autem magnam eius at corporis ad architecto rerum. Rerum sed non sunt minus tempore necessitatibus.', 0, 1, '2017-12-25 08:10:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 73, 95, 'Aut praesentium aliquam quidem occaecati quia alias suscipit necessitatibus. Minus amet recusandae porro praesentium quisquam eum. Voluptatem accusamus facilis est quia voluptates qui.', 0, 0, '2020-07-13 17:22:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 67, 99, 'Deleniti dolorum quidem sed corporis optio facilis. Repellendus recusandae sit facilis delectus voluptatum sint. Sit suscipit ut qui cumque nulla omnis. Et cum distinctio aspernatur ratione neque cumque qui.', 1, 1, '2019-01-29 20:21:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 69, 63, 'Qui sit voluptas voluptatem sint illum natus corporis. Libero delectus suscipit excepturi et qui exercitationem. Deserunt error quae enim consequatur cupiditate illum harum.', 0, 1, '2012-12-18 04:45:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 80, 4, 'Voluptatem quibusdam eum sed molestiae quae quasi. Aliquam sapiente dolores voluptatibus dolores dolor.', 0, 1, '2011-08-09 13:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 100, 63, 'Et alias temporibus rerum deserunt et tenetur atque. Voluptate eum harum similique officiis et numquam. At exercitationem ut eveniet labore totam autem tempora. Asperiores est sunt vel est debitis temporibus.', 0, 1, '2012-05-05 10:54:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 10, 35, 'Tempora vitae aliquam voluptas numquam officia aut nihil alias. Eum error corrupti at molestiae debitis in. Saepe in voluptates velit qui molestiae porro error.', 1, 0, '2020-04-09 19:23:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 97, 86, 'Mollitia temporibus eos earum et autem ut repudiandae. Repellendus qui quos aut et et iste. Enim reprehenderit et ut autem. Quia adipisci alias qui sunt.', 1, 0, '2018-12-29 17:33:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 92, 43, 'Eum est et praesentium quia. Dolorem autem dolor eos tempore. Repudiandae cum et tenetur temporibus eum. Atque et animi consequatur.', 0, 1, '2013-01-06 18:37:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 55, 12, 'Sed debitis rerum et consequatur veritatis. Temporibus nulla ipsa beatae dicta. Ut non pariatur rem est qui facere possimus. Porro aut qui autem harum commodi et non.', 0, 1, '2017-12-03 15:20:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 38, 62, 'Voluptatem doloremque pariatur nam. Id rerum id alias. Quia non eum labore unde quam veniam. Consectetur earum sed officiis.', 0, 0, '2019-08-08 02:14:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 71, 91, 'Earum aperiam dolore velit amet. Amet deserunt similique odit est aut voluptatem. Quidem nihil et temporibus neque et quod eligendi. Vero aut at dolorum dolor ipsum et.', 0, 0, '2015-01-03 03:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 28, 68, 'Non ipsam minima quis error voluptas quidem qui. Suscipit impedit ut nulla reiciendis neque vel. Reprehenderit accusantium dolor voluptas voluptate. Harum accusantium eum voluptas distinctio velit.', 0, 0, '2011-05-19 03:42:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 74, 67, 'Est eligendi libero quae vel. Qui voluptas modi velit a. Quo fugiat ut quas occaecati quidem.', 1, 1, '2012-12-26 20:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 58, 89, 'A dignissimos quia sint aperiam quis. Quasi rerum est sequi a. Nam dolorum dignissimos ullam et architecto sed nulla. Quidem praesentium molestiae occaecati eum amet corporis.', 1, 0, '2017-12-05 21:19:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 96, 27, 'Sit ipsam et suscipit illum deleniti fuga voluptatem. Nesciunt in reprehenderit expedita dicta aliquid in. Sapiente doloremque eius porro et sit libero libero. Repellendus quis rerum cupiditate sed corrupti.', 0, 0, '2014-12-15 20:53:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 21, 68, 'Quaerat occaecati quod autem quia eaque provident asperiores. Ea est nobis ut consequatur. Amet assumenda fugiat expedita sit consectetur. Dolores est aliquam possimus incidunt deleniti.', 0, 0, '2012-09-07 21:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 21, 87, 'Sunt similique et dolorem rerum. Optio rerum dolor quia doloribus. Incidunt ullam velit rem eos incidunt qui.', 1, 1, '2017-05-18 08:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 67, 89, 'Sunt ipsa rerum rem quia voluptatem laudantium natus. Dolorem nihil alias perferendis aliquid a quia. Autem quisquam perferendis a recusandae ut debitis. Consequatur nulla perferendis blanditiis enim.', 0, 0, '2015-04-21 20:40:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 49, 46, 'Aliquid inventore omnis sint rem qui vel. Officia aut omnis quasi nam minima. Omnis ut numquam pariatur sint possimus blanditiis.', 0, 1, '2020-02-01 10:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 92, 49, 'Consequatur quae rerum quidem dignissimos ex dolores. Incidunt voluptatem quae quam asperiores quo. Optio tenetur repellat libero deserunt magni. Libero consequatur doloremque in et quibusdam. Qui nulla enim minus quaerat.', 0, 1, '2014-02-17 23:32:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 9, 2, 'Repellendus veniam dignissimos adipisci totam distinctio unde placeat repellendus. Laborum consequatur et aut eaque ab. Mollitia debitis unde error rerum ad.', 0, 0, '2016-07-12 11:01:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 84, 5, 'Libero totam qui dolore placeat ullam aut. Minima eum laudantium itaque in enim. Iusto ex voluptatibus enim quis consequatur fugit est.', 0, 1, '2013-05-21 19:29:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 88, 76, 'Dolorem expedita qui voluptas eum. Odio voluptatem qui sit repellat deleniti. Repellendus accusamus sed itaque placeat hic aperiam harum. Eligendi ducimus sint ut harum.', 0, 1, '2020-12-18 23:57:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 48, 42, 'Ea eum ut commodi esse laudantium quo asperiores. Consequatur voluptas aliquid repellat id. Temporibus ut iusto quibusdam ullam. Totam incidunt rerum consequatur rerum.', 1, 0, '2016-04-11 23:54:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 87, 85, 'Minus repellat non occaecati dolorum eum repellat laborum. Rem sunt sit qui et amet. Consequatur necessitatibus et facilis occaecati eveniet non. Cum id unde non harum exercitationem.', 0, 1, '2014-09-26 07:20:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 4, 57, 'Minus porro eaque non deleniti nesciunt. Est dolorum neque nemo aut eius.', 1, 1, '2013-12-30 22:14:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 76, 31, 'Enim nostrum velit repudiandae nostrum laudantium. Eum in consequuntur consequuntur aut ratione unde. Voluptatum qui qui dolor vel iusto. Dolor molestiae voluptas esse qui vel hic voluptatem quas. Voluptas optio quas neque nemo voluptatem aut.', 1, 0, '2017-02-22 01:24:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 24, 49, 'Labore placeat rerum in tempora laborum amet asperiores. Rerum quia fuga est iusto voluptate tempora. Et ipsum accusamus distinctio aut inventore et voluptas.', 0, 0, '2015-02-11 22:36:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 97, 81, 'Ipsam rerum dolor non dolorem aut voluptatem esse. Voluptatem aut a qui unde nihil iusto aut tempora. Ipsa rerum animi vel quia enim et. Ducimus aliquam quis aut reprehenderit dolores est accusantium.', 0, 1, '2017-03-29 08:30:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 38, 92, 'Distinctio soluta ut voluptatum fugiat nesciunt maxime. Libero cumque laboriosam porro fugiat eos. Est optio cupiditate similique quas. Quia aut itaque nisi ratione nostrum. Sint aut aut recusandae.', 0, 1, '2011-12-22 10:28:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 8, 58, 'Eligendi in cupiditate iure quam illum dolorem unde ut. Aspernatur voluptas deserunt molestiae architecto suscipit nemo laudantium. Voluptatem amet delectus earum sit sint dolor ducimus. Rerum assumenda voluptatem quasi cumque.', 0, 0, '2014-03-26 08:29:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 60, 28, 'Laborum nisi molestias fugit aut quos ipsum ratione. Itaque distinctio et iusto aliquid corrupti. Doloribus aspernatur ipsa rerum reiciendis ut nihil accusamus et. Similique laboriosam aut autem exercitationem.', 1, 1, '2012-10-10 15:53:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 45, 26, 'Maiores est et quo. Aut omnis quia est et a pariatur. Consequatur aut molestiae nam eum recusandae aut iusto. Nihil provident nihil vero incidunt iusto similique.', 1, 1, '2021-01-05 04:15:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 17, 94, 'Minus aut consectetur quidem iure id nemo. Eligendi odit minima consectetur quis sint vero. Possimus vitae autem ipsam voluptatibus. Vero sed adipisci quasi et quidem ad eveniet.', 1, 0, '2017-01-03 05:41:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 72, 8, 'Dolores assumenda autem inventore impedit quasi. Atque aut nam voluptatibus modi quia impedit qui. Et est ea numquam ea non.', 0, 0, '2017-12-08 17:52:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 42, 80, 'Repellat suscipit dolores facere ut alias porro eaque. Est aut itaque et aut neque animi. Reprehenderit deleniti deleniti nobis quo natus ea est non.', 0, 0, '2014-11-12 11:34:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 10, 26, 'Sint explicabo ut explicabo eum occaecati dolore. Voluptas deleniti aut culpa qui eum totam odio. Minima modi blanditiis cumque sit tenetur aut officiis qui.', 0, 1, '2013-01-19 15:54:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 84, 97, 'Saepe omnis modi aspernatur magni eveniet. Voluptatum consequatur nihil est quo.', 1, 0, '2017-12-28 13:01:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 1, 31, 'Possimus doloribus expedita cumque recusandae. Fugit autem molestias illo aut eos impedit. Temporibus fuga consectetur eligendi vel iure. Qui enim cumque sequi sint minima expedita.', 0, 1, '2015-03-03 13:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 39, 88, 'Corrupti optio consequatur in voluptatem qui provident. Maiores atque aut in beatae vero et ut. Quia sit ad eaque est ea nemo. Sunt nobis adipisci laborum. Voluptatem repudiandae repellendus dolores molestias nihil rerum.', 0, 1, '2012-04-07 20:37:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 16, 42, 'Vel deleniti aut sit nulla deleniti fugit voluptatem. At at explicabo magni quis dicta aut. Sit magnam minima eos quae voluptatem.', 1, 1, '2018-08-23 09:14:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 44, 92, 'Veritatis illum consequuntur necessitatibus cupiditate. Numquam vel molestiae mollitia ut porro. Totam animi voluptatibus libero facilis impedit. Dolore quo nostrum ab architecto.', 0, 1, '2012-09-04 16:29:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 73, 68, 'Consequatur accusantium harum molestias totam iure mollitia sed ut. Accusamus consequatur ab nostrum dicta debitis. Quisquam voluptatum nobis quasi. Ullam dolore non quidem in et.', 0, 1, '2016-08-05 21:20:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 40, 70, 'Aut et dolorem ut ratione dolorem. Voluptatem earum esse tenetur ea quisquam.', 0, 1, '2021-02-02 21:22:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 49, 78, 'Quo quod possimus tempora quidem aut voluptatum. Ut atque veritatis doloremque laboriosam. Quod expedita maiores sed repudiandae quam blanditiis. Soluta quas accusantium exercitationem alias ipsa aut numquam possimus. Reiciendis dolorem qui laudantium beatae velit saepe.', 0, 1, '2019-07-31 05:30:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 61, 56, 'Odio in non voluptatem recusandae minus. Et nobis tenetur eaque nemo cum. Architecto porro qui nihil totam.', 1, 1, '2011-09-13 19:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 36, 21, 'Quos recusandae ab id consectetur libero tempore. Laborum consequatur id non quasi. Quam tempora nihil esse odio enim et deserunt ab. Earum dolorum reprehenderit dignissimos nulla.', 0, 0, '2011-12-23 11:29:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 84, 80, 'Est quis dolor nisi. Dolores omnis quod vero consequatur. Nobis officia consequatur et quas aliquid.', 1, 1, '2016-10-18 20:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 47, 100, 'Odit quibusdam doloremque iure minus sit velit repudiandae. Nemo autem necessitatibus totam nulla earum dolor cumque. Deserunt laboriosam amet aut autem.', 0, 0, '2017-04-25 15:13:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 73, 19, 'Id atque dolorum exercitationem odit. Qui ducimus at omnis fugiat magni qui ut. Sit perferendis doloribus non nulla eaque. Ab nihil dolores minus ut esse.', 0, 0, '2012-02-08 05:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 8, 14, 'Deserunt nulla in aliquid libero. Similique ea voluptatem nesciunt enim est. Quia unde voluptates officia.', 0, 1, '2012-04-13 09:44:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 99, 18, 'Aut harum harum nulla et facilis accusantium. Aut sint natus error eius omnis ex. Laborum totam et corporis ipsum hic.', 0, 1, '2012-09-07 17:31:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 40, 82, 'Tempora et facilis qui voluptas natus. Quaerat dolores voluptas ut facere vel facere nobis. Adipisci commodi ea et laboriosam. Cumque doloremque incidunt ipsam ullam amet ut libero.', 1, 0, '2020-09-12 05:08:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 14, 40, 'Et aut odio veritatis ipsam tenetur est. Et labore maiores non voluptatem ea reprehenderit quia. Debitis quis aut porro.', 0, 0, '2020-07-30 21:59:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 13, 53, 'Ratione doloremque tempore et et quod incidunt ipsa reiciendis. Aut quibusdam dignissimos delectus. Doloribus quae distinctio vitae omnis earum necessitatibus. Rerum dolorem nisi doloribus soluta dignissimos inventore.', 0, 1, '2019-04-26 23:03:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 27, 29, 'Sed consequatur sed rerum fuga. Et assumenda impedit voluptates placeat illum et. Ab non ut ut omnis officia. Id enim ipsa non amet quis nihil omnis.', 1, 0, '2018-07-29 22:00:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 94, 71, 'Magni in voluptatibus laudantium et molestias. Qui et dolor eum.', 0, 0, '2013-07-14 20:45:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 20, 66, 'Modi doloribus ipsa distinctio atque maiores aut eaque. Minima placeat et iusto deleniti neque. Deleniti asperiores doloribus exercitationem. Ut et laborum illo ex asperiores voluptatem voluptas quasi.', 1, 0, '2020-01-06 03:33:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 39, 60, 'Natus magnam quo autem ipsam aspernatur. Reiciendis itaque quo itaque maiores ea sapiente.', 0, 0, '2014-08-26 03:15:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 35, 87, 'Recusandae numquam est rem quas inventore. At sed deserunt et delectus quos maiores. Vel sed et totam. Ipsum omnis alias eaque eum impedit. At explicabo veniam qui similique corrupti ut et maxime.', 0, 1, '2012-12-10 15:13:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 38, 96, 'Veritatis omnis qui voluptates quae. Non quo explicabo velit molestias sint. Nam aut consequatur dolores animi aperiam exercitationem omnis. Praesentium veritatis et consequatur laboriosam voluptas ut excepturi.', 0, 0, '2018-03-05 01:46:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 43, 73, 'Delectus labore esse harum distinctio illum ducimus quaerat. Inventore ratione fuga nisi sit consequatur. Possimus consectetur soluta veritatis.', 1, 1, '2019-05-17 06:56:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 17, 27, 'Officiis occaecati quis nihil a quia et officiis. Cum cum perferendis molestias cumque saepe aut. Inventore cupiditate totam numquam autem maxime quo vitae.', 0, 0, '2016-12-08 23:02:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 52, 64, 'Fugit voluptates magnam vero et. Dolor consectetur rem libero corporis placeat itaque. Id enim quo quo dolor explicabo.', 0, 1, '2015-05-03 06:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 26, 24, 'Aspernatur exercitationem corrupti consequuntur dolores quisquam nam. Suscipit voluptatibus nihil deserunt. Laudantium doloribus alias laborum. Quo odio dicta a quasi sit.', 0, 1, '2014-07-24 20:17:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 82, 34, 'Culpa occaecati maxime velit qui perspiciatis. Odio perferendis et ipsa dolores similique repellendus.', 0, 0, '2018-08-08 10:02:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 38, 80, 'Voluptas in saepe facere. Et aliquam voluptas fugit cum ullam sint officiis. Ab praesentium asperiores et et quos ea. Aut omnis ut blanditiis asperiores omnis tempore.', 0, 1, '2018-06-23 00:34:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 51, 77, 'Quaerat repellat ipsum et expedita. Ut atque delectus sit. Ut esse fugit magni ea autem repellendus sapiente.', 1, 1, '2019-01-30 10:45:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 62, 65, 'Repellendus dignissimos qui ipsa aut nostrum esse. Maxime ipsa et corrupti commodi. Neque vitae reiciendis est. Ullam et ipsa sint ipsum exercitationem ut quo.', 0, 1, '2018-08-24 22:09:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 17, 75, 'Culpa quod voluptas voluptatem consectetur. Et amet voluptatibus unde ea ipsum excepturi. Aspernatur modi id rem reprehenderit.', 0, 0, '2014-04-18 02:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 17, 44, 'Aut vel voluptates voluptas ut sit iusto odio. Voluptatum cupiditate amet dicta omnis. Commodi et maiores distinctio dolor nobis esse. Modi doloremque et id modi placeat eveniet et.', 1, 1, '2015-10-31 05:24:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 4, 10, 'Necessitatibus perspiciatis officiis ut aut quia incidunt at. Officia excepturi ipsa velit. Dolorem magnam explicabo ex magni tempore.', 0, 0, '2016-07-25 10:06:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 15, 24, 'Culpa ullam ut voluptatum ut est id cumque culpa. Natus non rerum aut qui. Ut voluptatem ad dolorem facere itaque autem tenetur.', 1, 0, '2018-10-19 06:53:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 76, 53, 'Facilis porro et et recusandae in numquam tempore quia. Magnam dolorem quas incidunt rerum doloremque assumenda cumque.', 0, 0, '2013-02-18 10:34:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 11, 'Voluptas ea ducimus aliquam temporibus ut. Repellat velit sunt et perferendis qui amet qui. Alias ipsum sunt sunt. Et qui voluptates aut in et porro.', 0, 1, '2013-01-12 17:06:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 40, 21, 'Tempora non iste atque animi necessitatibus. Reiciendis unde aspernatur tempora quae dolor ullam dolores. Quaerat doloribus fugiat ex vitae magnam quidem nesciunt.', 1, 1, '2012-04-27 19:03:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 7, 83, 'Voluptate omnis velit optio voluptatibus autem provident nulla. Porro omnis necessitatibus repellat maiores quia.', 1, 0, '2012-06-12 16:58:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 93, 24, 'Consequuntur in atque aliquid quis inventore aut. Quae repudiandae aut ullam a voluptatem qui. Soluta labore eligendi ut qui est. Corporis beatae rem repudiandae voluptas ea placeat earum.', 0, 0, '2016-03-25 05:33:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 9, 44, 'Et quod fugiat blanditiis. Odit consectetur neque velit quis. Eos vel praesentium aut sint et autem sit. Est quis in iure velit in. Eos autem et deleniti nihil nam officia.', 0, 0, '2016-07-02 07:07:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 87, 35, 'Voluptas molestiae omnis earum sit quia nisi voluptas. Eum labore corporis nesciunt sint ipsum quibusdam voluptas. Molestias itaque quis enim fuga quia error necessitatibus.', 0, 1, '2014-07-18 13:43:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 68, 69, 'Ducimus in qui omnis ducimus consequatur amet. Qui accusantium esse et et vel non. Omnis facilis excepturi minus natus. Quisquam laboriosam ut sunt at.', 1, 0, '2018-07-28 23:15:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 68, 6, 'Et numquam qui enim facere iusto recusandae. Iusto autem saepe voluptatem exercitationem ab minus. Laborum autem tenetur veniam quisquam quos expedita.', 0, 0, '2015-11-20 06:31:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 48, 18, 'Quia excepturi corrupti quasi nihil. Et neque sunt earum vel. Fugit vero soluta quos qui quia a. Iste officiis praesentium dolor accusamus beatae.', 1, 0, '2012-10-19 00:49:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 83, 10, 'Est possimus ad rerum enim omnis. Aut sed quos sapiente distinctio quibusdam itaque doloribus. Dolores non magnam non hic vero et. Debitis quibusdam et in et facilis est. Ipsam et deserunt fuga veniam dolore.', 0, 1, '2014-10-20 01:19:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 82, 99, 'Ea tempora voluptatibus maxime sit. Ipsum voluptatum quia excepturi itaque explicabo quisquam. Ut odio omnis labore eaque minus neque dolorem. Ducimus non rerum sint aliquid itaque omnis eveniet.', 0, 0, '2014-11-19 03:54:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 85, 99, 'Consequatur illo at eveniet quibusdam omnis neque itaque voluptatem. Laudantium temporibus modi saepe consequuntur asperiores autem. Qui magnam et cum neque consequatur quis.', 1, 0, '2017-10-31 13:22:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 43, 88, 'Est expedita quos inventore sed aperiam quo qui. Totam neque quae dicta necessitatibus minus expedita autem. Dolor aperiam aut possimus ut. Pariatur voluptas deleniti quidem voluptatibus.', 0, 0, '2017-08-25 01:55:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 8, 58, 'Velit sint sapiente atque. Eius cumque ea in corporis. Illo omnis ut quisquam nostrum possimus.', 0, 0, '2011-11-24 14:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 11, 84, 'Ad error sunt libero dolores odio commodi. Ut consequatur molestiae tempora facere iste et sit. Quos delectus et doloremque et magnam error sunt.', 0, 1, '2018-12-14 04:02:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 10, 95, 'Illo sunt non exercitationem beatae consectetur ducimus modi id. Sit dolor repellendus repellat eos velit ipsum voluptatem.', 0, 0, '2016-06-21 23:16:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 95, 50, 'Nulla vero saepe est aut provident. In fugit minus nobis consequuntur adipisci aut. Corrupti eum illum blanditiis velit nesciunt expedita voluptatibus. Voluptatum a veritatis quidem aliquam earum deleniti.', 1, 1, '2013-06-20 03:21:45');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` datetime DEFAULT NULL COMMENT 'Последний вход в систему',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'P', '1960-01-01', 'Port Eldonville', 'Costa Rica', '2015-03-18 04:25:02', '2019-07-01 01:30:17', '2019-01-24 06:08:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'D', '1960-01-01', 'Antoninachester', 'Turks and Caicos Islands', '2012-07-07 06:09:57', '2014-10-03 01:46:51', '2011-12-14 01:21:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'P', '1960-01-01', 'West Erik', 'Kyrgyz Republic', '2011-03-21 04:02:48', '2014-10-15 22:25:59', '2015-05-05 13:07:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'M', '1960-01-01', 'Port Sincerebury', 'Afghanistan', '2017-08-12 17:49:51', '2018-08-28 23:01:39', '2017-01-14 23:03:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, 'P', '1960-01-01', 'Santosbury', 'Barbados', '2014-11-17 14:32:33', '2019-07-13 04:41:41', '2021-02-04 08:33:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'M', '1960-01-01', 'Kihnbury', 'United States Virgin Islands', '2013-05-17 21:45:23', '2014-08-11 20:05:24', '2013-10-21 01:25:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, 'D', '1960-01-01', 'South Aiden', 'Colombia', '2014-05-09 19:54:18', '2013-04-02 07:53:37', '2011-05-03 23:32:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, 'P', '1960-01-01', 'South Mathewland', 'Bahrain', '2016-07-29 20:15:25', '2020-09-16 12:14:46', '2019-09-09 11:51:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'M', '1960-01-01', 'North Zackaryhaven', 'Reunion', '2015-12-08 06:20:03', '2014-11-05 01:16:33', '2020-12-23 22:49:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'D', '1960-01-01', 'Cruickshankfurt', 'Svalbard & Jan Mayen Islands', '2018-10-08 14:28:29', '2019-08-17 04:53:15', '2016-02-22 18:44:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'D', '1960-01-01', 'New Duaneside', 'Angola', '2016-11-01 12:50:20', '2016-03-25 17:19:12', '2013-04-03 03:45:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'P', '1960-01-01', 'South Marisolview', 'Norway', '2012-02-13 23:26:51', '2013-06-23 02:52:06', '2018-04-04 15:17:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'D', '1960-01-01', 'Saraimouth', 'Svalbard & Jan Mayen Islands', '2014-11-26 14:44:56', '2021-02-12 15:27:48', '2019-05-16 18:18:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, 'M', '1960-01-01', 'Saigemouth', 'Fiji', '2012-06-12 03:40:50', '2013-11-20 02:18:06', '2018-03-10 06:03:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'P', '1960-01-01', 'Lonmouth', 'Suriname', '2011-09-26 10:20:13', '2017-01-04 13:57:43', '2014-06-03 06:15:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'M', '1960-01-01', 'Lake Macie', 'Turkmenistan', '2017-07-01 13:20:38', '2020-06-15 18:51:44', '2018-04-28 02:23:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, 'M', '1960-01-01', 'Port Jereltown', 'Monaco', '2011-06-23 02:28:25', '2016-04-29 21:29:54', '2014-04-21 22:08:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'M', '1960-01-01', 'Zemlakside', 'Benin', '2020-11-18 01:43:55', '2011-08-06 08:32:13', '2014-10-02 22:32:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, 'P', '1960-01-01', 'Kielhaven', 'Congo', '2017-10-29 06:25:21', '2019-07-28 00:31:38', '2013-06-11 05:00:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, 'M', '1960-01-01', 'Cummerataborough', 'Cocos (Keeling) Islands', '2021-01-01 07:21:19', '2013-06-04 05:51:22', '2012-03-28 08:13:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'M', '1960-01-01', 'Tyrachester', 'Heard Island and McDonald Islands', '2016-07-09 10:56:11', '2016-02-24 18:07:48', '2016-02-18 23:11:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, 'P', '1960-01-01', 'Zackstad', 'United States of America', '2014-04-16 19:50:18', '2019-07-09 21:52:07', '2017-05-13 12:20:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'P', '1960-01-01', 'West Rylanfurt', 'Iceland', '2018-10-18 13:16:36', '2015-08-23 22:19:42', '2013-04-22 06:50:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, 'P', '1960-01-01', 'West Conorberg', 'Grenada', '2017-04-10 17:30:31', '2011-05-18 20:53:25', '2013-02-14 01:22:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, 'D', '1960-01-01', 'Keyshawnbury', 'China', '2014-07-06 06:56:50', '2012-03-16 22:05:54', '2011-10-22 18:01:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, 'D', '1960-01-01', 'Nealmouth', 'Cocos (Keeling) Islands', '2015-08-08 14:39:48', '2020-05-16 06:26:44', '2013-10-04 22:57:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, 'P', '1960-01-01', 'East Milliefurt', 'Bhutan', '2017-05-19 13:45:23', '2018-07-02 04:02:45', '2016-06-28 05:42:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, 'M', '1960-01-01', 'Blandaburgh', 'Latvia', '2019-09-09 13:10:26', '2015-09-06 22:05:29', '2014-11-17 05:21:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, 'M', '1960-01-01', 'South Beryl', 'Vanuatu', '2015-09-22 08:15:15', '2019-06-22 21:04:07', '2017-05-15 05:21:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'M', '1960-01-01', 'D\'Amorebury', 'Turkey', '2013-07-03 04:26:54', '2020-11-05 19:50:57', '2015-04-29 20:50:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'P', '1960-01-01', 'South Laisha', 'Panama', '2018-12-26 15:56:05', '2012-04-12 00:23:29', '2012-06-11 22:56:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'D', '1960-01-01', 'Koeppmouth', 'Andorra', '2015-05-11 12:22:49', '2014-05-02 18:39:14', '2017-06-26 21:25:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'M', '1960-01-01', 'West Emerald', 'Palestinian Territory', '2020-10-10 18:18:13', '2012-10-07 17:43:30', '2019-11-01 05:55:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, 'M', '1960-01-01', 'New Eve', 'Ecuador', '2014-08-23 00:02:24', '2013-02-24 00:01:09', '2013-03-11 22:56:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'M', '1960-01-01', 'Langworthport', 'Syrian Arab Republic', '2014-09-11 18:51:18', '2012-04-18 02:38:35', '2015-10-28 06:56:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'P', '1960-01-01', 'East Delaney', 'Colombia', '2014-01-01 12:04:42', '2016-10-11 19:48:34', '2011-08-30 06:55:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, 'D', '1960-01-01', 'Port Myraburgh', 'Slovenia', '2015-05-21 21:28:03', '2021-02-03 17:28:30', '2016-11-13 11:23:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, 'P', '1960-01-01', 'Thadville', 'Peru', '2017-04-17 02:28:42', '2017-01-12 07:50:12', '2014-02-17 04:58:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'P', '1960-01-01', 'North Donniestad', 'Switzerland', '2018-01-27 03:21:25', '2015-08-05 01:49:39', '2011-09-24 03:05:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'P', '1960-01-01', 'Tillmanbury', 'Pakistan', '2011-04-23 10:28:26', '2014-10-22 00:54:51', '2015-10-31 14:24:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, 'D', '1960-01-01', 'Aufderharstad', 'Kazakhstan', '2020-03-17 07:14:03', '2018-03-08 10:20:41', '2012-09-26 04:00:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'M', '1960-01-01', 'Deshaunmouth', 'Guinea-Bissau', '2019-10-17 06:46:25', '2012-08-04 23:26:22', '2020-05-07 17:26:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, 'M', '1960-01-01', 'Lake Tracehaven', 'Sri Lanka', '2020-11-23 14:59:09', '2020-02-24 20:18:45', '2016-07-21 00:07:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, 'M', '1960-01-01', 'Sageburgh', 'Niue', '2013-10-23 02:01:55', '2012-05-18 18:29:51', '2016-07-02 05:02:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, 'M', '1960-01-01', 'East Flo', 'Mayotte', '2015-06-19 17:37:28', '2011-10-07 05:10:36', '2016-08-24 15:51:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'M', '1960-01-01', 'Theashire', 'Andorra', '2016-01-09 12:46:41', '2012-07-29 01:39:02', '2012-12-03 11:05:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'M', '1960-01-01', 'Schinnermouth', 'Eritrea', '2013-06-10 23:18:25', '2015-04-25 01:48:57', '2019-09-14 03:50:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, 'M', '1960-01-01', 'West Margarita', 'Togo', '2017-04-25 23:17:10', '2020-11-02 06:59:04', '2020-01-12 19:35:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, 'P', '1960-01-01', 'Ignatiushaven', 'Bouvet Island (Bouvetoya)', '2012-11-25 13:31:39', '2014-07-20 12:14:30', '2017-10-03 14:18:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'P', '1960-01-01', 'South Oliver', 'China', '2015-11-28 19:19:21', '2014-08-01 17:12:11', '2012-03-10 05:36:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'P', '1960-01-01', 'West Corene', 'Mali', '2016-02-16 19:15:21', '2011-02-19 00:08:40', '2019-12-24 18:21:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, 'M', '1960-01-01', 'New Joaquin', 'Myanmar', '2020-07-13 11:02:50', '2018-12-14 05:41:37', '2011-04-06 15:34:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'P', '1960-01-01', 'Magnusbury', 'Papua New Guinea', '2013-04-15 15:51:14', '2011-08-25 10:38:07', '2013-05-06 00:35:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, 'M', '1960-01-01', 'Boganland', 'Heard Island and McDonald Islands', '2019-12-04 12:54:58', '2014-09-25 09:26:37', '2014-09-22 16:06:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'P', '1960-01-01', 'Lake Lelahberg', 'Trinidad and Tobago', '2020-03-02 12:44:46', '2011-03-18 02:42:58', '2016-12-28 06:07:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, 'P', '1960-01-01', 'Mannmouth', 'Nicaragua', '2018-01-05 10:19:34', '2015-11-03 17:43:36', '2019-10-20 05:29:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'M', '1960-01-01', 'North Delores', 'Turkmenistan', '2011-07-02 12:30:32', '2013-11-25 20:37:58', '2014-08-05 15:32:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'M', '1960-01-01', 'Jeradstad', 'American Samoa', '2011-11-14 10:17:24', '2016-10-10 07:30:13', '2011-08-30 17:57:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'M', '1960-01-01', 'Lake Anastasiamouth', 'Taiwan', '2018-12-27 02:33:23', '2014-12-17 18:31:54', '2013-11-30 06:12:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'M', '1960-01-01', 'South Lilianashire', 'Greece', '2020-02-26 17:38:54', '2017-04-15 15:07:01', '2020-09-29 15:26:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'M', '1960-01-01', 'South Larry', 'Nicaragua', '2014-12-20 06:38:00', '2015-07-20 04:10:52', '2014-01-10 19:21:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'M', '1960-01-01', 'Claudiefort', 'Guernsey', '2019-10-27 02:07:10', '2019-01-24 16:40:05', '2018-03-06 12:16:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, 'M', '1960-01-01', 'Champlinport', 'Fiji', '2018-11-14 05:51:06', '2018-03-27 03:25:24', '2014-02-15 12:26:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'M', '1960-01-01', 'Mayertfurt', 'Gibraltar', '2015-07-21 11:30:42', '2019-07-09 12:08:27', '2020-11-18 01:37:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, 'D', '1960-01-01', 'Brakusberg', 'Poland', '2019-09-20 11:06:41', '2019-03-29 11:39:27', '2016-05-26 10:57:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, 'P', '1960-01-01', 'Port Darrylberg', 'Chile', '2021-01-25 11:32:39', '2018-09-22 15:53:06', '2015-06-28 20:58:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, 'D', '1960-01-01', 'North Susan', 'Saint Kitts and Nevis', '2018-01-01 10:49:01', '2013-08-28 19:34:33', '2013-11-10 07:28:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'D', '1960-01-01', 'East Bradley', 'Aruba', '2020-02-17 18:31:03', '2018-02-19 16:30:08', '2019-05-07 15:02:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'P', '1960-01-01', 'Lake Percivalfort', 'Denmark', '2012-09-02 06:07:05', '2018-09-26 10:39:07', '2019-01-02 16:49:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'D', '1960-01-01', 'Reeceview', 'Angola', '2014-11-04 23:38:44', '2015-04-06 22:26:37', '2019-03-10 11:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'M', '1960-01-01', 'East Bethany', 'Switzerland', '2011-10-03 10:09:22', '2016-12-25 13:21:00', '2013-09-05 05:34:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, 'P', '1960-01-01', 'Maverickstad', 'Chad', '2013-04-22 01:48:22', '2013-07-21 18:51:33', '2017-01-13 11:51:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, 'M', '1960-01-01', 'Rosieville', 'Bolivia', '2020-05-13 23:26:29', '2013-03-31 17:09:41', '2013-08-02 05:14:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, 'P', '1960-01-01', 'Bednarbury', 'Macedonia', '2020-04-15 07:23:00', '2012-08-15 11:57:34', '2011-10-02 00:00:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, 'M', '1960-01-01', 'New Cesarberg', 'Cote d\'Ivoire', '2014-08-28 15:10:47', '2017-11-23 05:38:35', '2019-07-03 03:53:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, 'M', '1960-01-01', 'Rhodatown', 'Mauritius', '2011-04-29 11:23:02', '2018-05-25 15:07:20', '2012-04-06 11:22:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, 'M', '1960-01-01', 'South Brionnafurt', 'Burundi', '2011-04-23 13:26:52', '2016-04-29 05:04:13', '2017-09-08 05:05:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'D', '1960-01-01', 'Violetton', 'Micronesia', '2018-08-17 13:34:43', '2016-05-29 02:57:19', '2017-11-11 10:31:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'P', '1960-01-01', 'Malliehaven', 'Micronesia', '2014-03-20 14:28:35', '2012-05-10 05:25:57', '2016-09-24 17:41:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, 'M', '1960-01-01', 'South Daytontown', 'Turkey', '2020-12-21 01:16:10', '2016-12-31 21:40:51', '2014-11-27 02:58:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, 'M', '1960-01-01', 'Lake Jordan', 'Cote d\'Ivoire', '2016-09-10 09:42:22', '2011-11-22 19:20:17', '2015-12-29 07:46:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'P', '1960-01-01', 'Port Agnes', 'Ecuador', '2020-07-23 03:46:36', '2014-11-11 19:01:30', '2017-10-29 07:36:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, 'M', '1960-01-01', 'North Lisettefurt', 'New Caledonia', '2014-09-05 21:21:59', '2013-12-20 12:39:14', '2015-12-01 21:34:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, 'D', '1960-01-01', 'Klingmouth', 'Libyan Arab Jamahiriya', '2017-04-04 08:41:37', '2017-03-27 23:49:55', '2017-06-04 11:45:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'P', '1960-01-01', 'Carterfurt', 'Falkland Islands (Malvinas)', '2016-03-15 20:13:54', '2019-03-25 12:37:03', '2013-10-24 22:53:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'D', '1960-01-01', 'South Cathy', 'Myanmar', '2015-05-22 19:04:47', '2018-03-19 14:49:46', '2016-05-12 04:59:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'M', '1960-01-01', 'Ethachester', 'Swaziland', '2018-08-12 20:38:52', '2018-01-20 15:34:47', '2017-02-15 23:39:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'M', '1960-01-01', 'South Salmafurt', 'Liechtenstein', '2016-03-01 18:12:22', '2011-09-05 08:27:14', '2018-04-08 22:35:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'M', '1960-01-01', 'Port Mabelle', 'Bouvet Island (Bouvetoya)', '2020-10-06 00:44:26', '2019-04-06 07:01:53', '2015-06-16 20:52:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'M', '1960-01-01', 'North Constantinmouth', 'Italy', '2021-01-31 06:44:32', '2017-02-19 22:56:03', '2016-10-01 04:10:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, 'P', '1960-01-01', 'Terrancechester', 'Estonia', '2012-09-10 11:18:56', '2014-08-31 23:44:06', '2011-04-08 01:14:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'M', '1960-01-01', 'East Danial', 'Saint Lucia', '2011-07-18 15:12:58', '2015-08-13 12:54:55', '2018-06-07 14:07:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'M', '1960-01-01', 'Port Berenicestad', 'Belize', '2016-02-17 11:56:57', '2012-04-20 13:00:36', '2016-08-10 21:09:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'M', '1960-01-01', 'Francescoland', 'Saint Vincent and the Grenadines', '2014-03-01 09:04:54', '2011-08-02 06:54:17', '2014-11-18 14:00:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'M', '1960-01-01', 'Hegmannhaven', 'Seychelles', '2016-03-08 13:21:22', '2015-06-28 06:57:27', '2015-05-28 13:13:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'D', '1960-01-01', 'Lake Taniamouth', 'Dominica', '2017-12-29 17:12:06', '2018-12-14 20:39:04', '2013-06-12 17:14:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, 'P', '1960-01-01', 'Carrollstad', 'Madagascar', '2011-10-25 05:17:19', '2019-06-22 04:24:32', '2015-12-05 02:01:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'D', '1960-01-01', 'Mylesbury', 'Guinea', '2015-02-03 15:55:19', '2018-10-09 03:55:28', '2014-06-27 06:07:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, 'M', '1960-01-01', 'Hilpertchester', 'Indonesia', '2019-08-04 18:46:27', '2019-03-25 09:39:31', '2019-11-18 07:32:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'M', '1960-01-01', 'Waltermouth', 'Montserrat', '2018-11-14 09:31:11', '2014-10-30 14:18:40', '2020-01-16 00:32:52');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Etha', 'Hermiston', 'hilario31@example.com', '+41(9)4231376162', '2011-04-03 11:49:46', '2013-09-27 22:57:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Emily', 'Collins', 'ward.coralie@example.net', '107-276-9598', '2019-12-31 02:37:05', '2017-05-07 19:02:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Gussie', 'Macejkovic', 'theron.wisoky@example.net', '1-469-028-5226x886', '2017-03-07 13:15:49', '2019-08-14 02:31:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Nathan', 'Kulas', 'addie.kertzmann@example.com', '1-411-534-0391', '2013-12-06 06:42:18', '2014-04-27 10:32:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Uriah', 'Schimmel', 'jkeebler@example.org', '263-909-3686', '2020-03-22 13:19:03', '2020-07-03 20:06:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Reymundo', 'Hackett', 'rupert88@example.org', '1-779-510-3003x86404', '2019-09-08 17:08:49', '2015-04-05 12:28:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Javier', 'Bins', 'marian.krajcik@example.com', '1-493-627-8437x63359', '2017-02-07 03:19:59', '2016-03-26 05:28:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Kattie', 'Franecki', 'emard.rosanna@example.net', '565.665.2111x7787', '2017-10-03 11:30:52', '2012-03-11 09:50:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Darren', 'Mueller', 'eino19@example.org', '816.714.7949x345', '2014-10-10 14:11:53', '2015-07-29 14:53:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Sunny', 'Bogan', 'newell.white@example.org', '1-007-392-3829', '2011-09-06 20:30:59', '2013-01-14 14:34:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Tyrell', 'Herman', 'leffler.lauretta@example.net', '121-135-7423x204', '2014-12-29 10:58:30', '2017-07-20 04:40:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Jimmie', 'Metz', 'moriah97@example.com', '1-431-653-6174x92223', '2015-09-07 23:19:33', '2012-08-14 19:54:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Javonte', 'Morar', 'darrel.rolfson@example.com', '803.128.0932', '2019-01-11 10:25:24', '2013-03-25 00:23:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Carissa', 'Upton', 'cormier.alisa@example.net', '1-370-205-7920x115', '2012-03-04 11:54:16', '2011-08-22 09:06:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Marta', 'Cole', 'leonel.halvorson@example.com', '1-902-301-1341', '2012-06-16 23:02:19', '2018-06-10 20:50:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Naomie', 'Ward', 'cyril.collins@example.org', '02035960037', '2015-02-04 20:23:49', '2019-03-03 10:03:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Ivy', 'Prosacco', 'catharine.bednar@example.net', '1-068-124-4676', '2014-01-09 01:22:33', '2015-06-08 11:13:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Lura', 'Gislason', 'alfred69@example.com', '836.313.5589x96461', '2019-02-19 01:02:06', '2011-11-23 12:06:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Camilla', 'Kilback', 'davion80@example.net', '(756)354-4717x4763', '2017-08-22 23:06:15', '2013-10-15 10:40:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Delbert', 'Emard', 'bboehm@example.org', '1-710-679-3860x518', '2013-01-29 01:52:53', '2018-10-04 06:08:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Annabell', 'Paucek', 'sebastian63@example.com', '1-609-044-8356x1687', '2015-11-04 06:08:33', '2012-03-14 04:57:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Raleigh', 'Emmerich', 'ywaelchi@example.org', '(710)978-7154', '2014-06-06 09:23:39', '2019-09-05 00:44:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Delfina', 'Jones', 'ulises.cummerata@example.org', '289.667.1446x13885', '2018-08-22 00:20:56', '2020-05-31 22:58:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Lavinia', 'Beer', 'kschneider@example.net', '498-092-8955', '2014-03-01 10:19:49', '2014-09-11 04:51:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Delmer', 'Connelly', 'delta.quigley@example.org', '1-983-279-7487x8079', '2021-01-06 21:25:24', '2020-11-30 11:54:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Emie', 'Nikolaus', 'jwalker@example.net', '(468)112-1822x72073', '2016-05-15 19:24:23', '2014-10-23 12:14:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Irving', 'Harris', 'russel.wayne@example.com', '(339)998-2795', '2017-06-07 19:41:26', '2018-02-21 07:35:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Gordon', 'Brekke', 'quinn08@example.org', '705.186.1116', '2019-01-08 11:51:04', '2014-07-21 03:27:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Otho', 'Cummings', 'kaia.rowe@example.com', '077-073-6168', '2016-10-16 15:32:44', '2016-08-31 09:36:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Dayton', 'Hegmann', 'alfred12@example.com', '1-176-495-8443', '2012-07-29 16:54:29', '2016-09-16 00:43:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Baylee', 'Heathcote', 'winona.stanton@example.com', '03565540490', '2017-05-16 00:42:21', '2020-08-20 17:19:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Arielle', 'Goldner', 'volkman.carrie@example.net', '1-615-879-5547x645', '2018-02-09 14:02:01', '2012-05-07 00:12:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Jeanne', 'Lemke', 'mueller.carleton@example.com', '077-545-6369x967', '2016-09-07 09:39:02', '2018-07-13 10:03:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Madeline', 'Schuppe', 'keven.roob@example.net', '00444661354', '2020-06-04 20:14:50', '2016-09-12 02:56:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Geovanny', 'Langworth', 'lilly.ritchie@example.net', '(295)719-5899', '2013-11-09 00:58:33', '2020-10-17 07:05:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Beth', 'Bailey', 'weldon63@example.com', '054.874.6409', '2013-01-11 16:45:10', '2014-02-18 21:27:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Corine', 'Harber', 'albin.frami@example.com', '1-273-951-8303', '2013-03-02 06:51:31', '2015-12-08 02:40:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Adalberto', 'Casper', 'jaskolski.olen@example.net', '(704)935-7329x30890', '2018-03-25 18:14:26', '2018-06-06 22:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Christelle', 'O\'Reilly', 'mbode@example.org', '+81(4)9186769158', '2019-05-02 06:19:54', '2020-07-06 07:43:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Syble', 'Streich', 'zmraz@example.com', '960-524-6462x95019', '2012-12-15 01:17:23', '2011-11-17 22:19:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Merle', 'Hermann', 'runolfsdottir.durward@example.net', '383-065-7432', '2015-03-11 01:29:01', '2015-06-19 09:38:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Davon', 'Beatty', 'jacobson.raquel@example.org', '657.133.7300', '2018-05-06 18:11:39', '2014-07-06 14:41:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Burnice', 'Wuckert', 'barry.reinger@example.org', '1-945-153-2842x7577', '2016-09-29 06:43:44', '2018-11-13 16:20:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Maybelle', 'Dare', 'grimes.kellie@example.net', '1-961-946-8824', '2011-10-26 22:16:06', '2016-04-01 06:38:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Renee', 'Beier', 'weimann.tyra@example.net', '1-182-815-8093x22352', '2012-09-14 18:19:21', '2016-09-23 15:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Shanie', 'Graham', 'adrien72@example.com', '1-338-556-6322', '2019-09-30 12:06:38', '2014-03-15 20:34:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Marcus', 'Parisian', 'percy.bailey@example.org', '(585)384-2885', '2020-10-21 01:56:28', '2014-11-29 21:59:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Cruz', 'Turcotte', 'geoffrey64@example.org', '(268)139-7785x3353', '2017-02-16 04:05:12', '2017-11-20 10:58:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Ozella', 'Waelchi', 'lucious.weissnat@example.org', '1-173-479-2105', '2021-01-15 18:53:52', '2017-07-24 16:36:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Cleta', 'Sauer', 'kwisozk@example.org', '865.067.4951', '2016-09-13 14:20:18', '2020-10-14 00:54:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Lenora', 'Rutherford', 'lindsay.torp@example.net', '119.836.6276', '2013-06-26 19:48:40', '2011-10-26 02:50:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Myrtle', 'Lubowitz', 'liliana98@example.net', '400.201.9294', '2018-10-24 23:59:22', '2018-12-07 15:10:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Katharina', 'Kunde', 'don.roberts@example.net', '1-990-101-5548', '2016-08-02 02:07:30', '2013-12-05 08:51:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Aylin', 'Spencer', 'marie80@example.net', '1-394-633-2690', '2018-10-22 13:35:04', '2019-10-21 18:10:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Jaylan', 'Wolff', 'taurean.waters@example.net', '(719)631-6033', '2011-06-13 17:34:25', '2019-03-10 17:51:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Desmond', 'Kohler', 'zgaylord@example.com', '(717)141-0965', '2020-10-27 06:04:13', '2019-11-09 22:38:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Roman', 'Harvey', 'marielle.conroy@example.net', '1-385-084-0018', '2012-04-03 06:27:44', '2011-04-30 17:58:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Demetris', 'Turcotte', 'qrogahn@example.org', '346-816-7492x0374', '2013-06-06 05:29:35', '2013-08-30 10:02:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jazmyne', 'Dibbert', 'zo\'reilly@example.net', '(803)235-4221x2128', '2014-08-13 05:13:21', '2013-12-29 12:18:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Marion', 'Renner', 'adan.champlin@example.org', '1-226-855-3684', '2018-06-11 00:50:05', '2021-02-15 22:24:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Mathias', 'Jones', 'romaguera.raven@example.com', '860.727.8662x676', '2019-06-14 14:12:25', '2014-04-27 12:54:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Suzanne', 'Bruen', 'rmarquardt@example.com', '(151)206-2525x7450', '2020-03-29 05:36:44', '2014-07-30 10:14:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Vanessa', 'Kemmer', 'leuschke.frederick@example.com', '1-604-388-8556x796', '2015-08-10 23:12:34', '2011-09-12 01:16:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Verdie', 'Ebert', 'unique.ziemann@example.net', '1-768-868-7305x727', '2019-12-15 04:42:16', '2011-05-17 01:19:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Kaelyn', 'Cronin', 'brody.boehm@example.net', '241-640-1388', '2016-03-03 13:18:26', '2013-07-25 06:18:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Dessie', 'Von', 'xfriesen@example.com', '1-631-472-6173x7925', '2019-02-04 11:04:34', '2015-04-23 18:04:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Danyka', 'Wolf', 'osvaldo.king@example.com', '1-771-649-0146x7318', '2019-09-01 04:55:04', '2013-10-05 05:16:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Ella', 'Kemmer', 'powlowski.izaiah@example.net', '(725)347-6385x54607', '2017-10-15 04:05:17', '2013-12-29 06:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Isabelle', 'Rogahn', 'padberg.johann@example.net', '1-006-261-4775', '2016-01-15 15:32:50', '2012-03-31 13:54:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Rebeka', 'Monahan', 'emma13@example.org', '1-012-626-2889x359', '2013-06-11 18:26:45', '2021-01-09 14:29:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Princess', 'Borer', 'will.deborah@example.org', '779.221.0437x135', '2020-10-20 07:26:01', '2015-12-19 06:14:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Mervin', 'Krajcik', 'ymarks@example.net', '(662)247-8899', '2018-11-17 00:15:06', '2019-09-25 22:19:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Estevan', 'Heaney', 'virginia.kreiger@example.net', '+57(7)2422508858', '2015-03-06 00:00:54', '2016-05-03 04:47:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Timothy', 'Carroll', 'ethan86@example.net', '1-992-871-3730', '2011-09-10 20:43:58', '2014-03-06 11:19:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Olga', 'Borer', 'turcotte.macie@example.net', '852-652-3590', '2011-09-22 18:37:03', '2018-03-19 08:54:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lee', 'Kohler', 'fahey.sarah@example.com', '(874)404-6866x73327', '2014-07-19 03:20:53', '2015-12-11 09:18:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Maryjane', 'Cummerata', 'bryon86@example.org', '510.882.1642x23139', '2020-02-09 18:53:30', '2016-08-17 08:00:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Tremaine', 'Anderson', 'philip09@example.org', '378.138.0167', '2019-09-05 03:45:23', '2018-05-13 08:07:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Tito', 'Ruecker', 'dhilll@example.net', '+00(5)1126905632', '2019-05-05 07:46:41', '2015-08-18 11:53:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Walton', 'Hamill', 'jeromy60@example.org', '256-505-8776', '2019-07-14 02:30:35', '2016-06-23 20:54:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Petra', 'Bailey', 'co\'keefe@example.com', '(868)727-3727', '2016-07-04 23:06:37', '2012-08-19 06:11:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Jaida', 'Bernhard', 'jimmie.simonis@example.com', '528-253-5739x9569', '2015-01-15 17:32:33', '2012-08-22 20:52:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Carey', 'Vandervort', 'zechariah.lindgren@example.org', '874-952-7269', '2019-04-03 03:08:13', '2011-04-26 10:07:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Adrien', 'Kshlerin', 'juston91@example.com', '691-437-5107', '2019-03-03 07:27:24', '2013-08-11 18:24:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Catalina', 'Will', 'kasandra.kerluke@example.com', '(049)007-2257', '2017-06-04 14:42:27', '2013-07-18 09:54:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Green', 'Bednar', 'schneider.skye@example.com', '364-915-5908x35673', '2019-05-11 12:26:50', '2015-08-28 19:14:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Reagan', 'Wolff', 'shanna.green@example.org', '353.068.3957x53870', '2014-03-26 01:06:14', '2012-12-07 03:01:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Emmet', 'Grimes', 'kristina.predovic@example.org', '997-517-6600', '2014-08-05 16:57:11', '2016-10-13 17:47:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Zena', 'Abernathy', 'nwolff@example.com', '944-875-1419x2719', '2014-09-26 21:24:42', '2020-06-01 00:48:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Eloise', 'Stokes', 'verona44@example.net', '(223)228-3912', '2017-08-04 08:52:52', '2017-11-25 07:44:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Frederique', 'Weissnat', 'xbeatty@example.org', '07513201405', '2015-01-11 06:35:07', '2020-01-02 22:38:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Hope', 'Bogan', 'zhowell@example.com', '(123)787-1815x7131', '2016-09-26 19:08:39', '2021-02-01 13:50:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Tiana', 'Upton', 'nolan.meredith@example.com', '308.731.5005x065', '2017-10-26 03:32:39', '2018-06-17 23:50:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Maxine', 'Lesch', 'magali.daniel@example.org', '939.109.4841x96164', '2011-12-25 03:40:28', '2014-01-17 21:44:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Prudence', 'Gaylord', 'graham.katharina@example.org', '(750)199-8808x2576', '2011-12-02 01:27:01', '2018-06-04 14:04:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Einar', 'Jerde', 'buckridge.brooklyn@example.org', '1-628-856-7496x156', '2012-07-15 02:53:21', '2016-11-28 16:47:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Tomasa', 'Fay', 'lockman.xavier@example.com', '334.730.4452x118', '2017-05-27 18:52:30', '2019-12-26 01:34:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Brendon', 'Lang', 'melisa95@example.net', '192-312-1508x1928', '2019-10-10 20:46:30', '2014-09-20 23:39:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Chelsie', 'Tremblay', 'pierce43@example.net', '(504)059-1554x6946', '2018-03-01 01:16:22', '2021-01-21 16:57:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Ward', 'Keebler', 'garrick.bartoletti@example.net', '+82(1)1857324111', '2011-03-25 04:24:40', '2019-02-08 23:44:37');


