SET time_zone = '+00:00';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `admin` VALUES (1,'admin','$2a$10$bGhZfIXHzovtoRXUGe7Z5.WrQOffSz615MUOHLZRz7hqvnr25aPsa');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `sorting` int NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `categories` VALUES (1,'T-shirts','t-shirts',2),(4,'Fruits','fruits',1);

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `sorting` int NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `pages` VALUES (1,'Home','home','<h2>Home Page</h2>',1),(2,'About','about','<h2>About Page</h2>',2);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `products` VALUES
(4,'Apple','apple','<p>Nice <strong>apples</strong></p>','apples.jpg',1.99,4,'2021-01-25 10:19:22','2021-01-25 11:28:06'),
(5,'Banana','banana','Tasty bananas','bananas.jpg',3.99,4,'2021-01-25 10:19:51','2021-01-25 10:19:51'),
(6,'Black shirt','black-shirt','A black shirt','black shirt.jpg',5.99,1,'2021-01-25 10:20:31','2021-01-25 10:20:31'),
(7,'Blue shirt','blue-shirt','A blue shirt','blue shirt.jpg',6.99,1,'2021-01-25 10:20:56','2021-01-25 10:20:56'),
(8,'Grape fruit','grape-fruit','Juicy grapefruit','grapefruit.jpg',3.90,4,'2021-01-25 10:21:34','2021-01-25 10:21:34'),
(9,'Grapes','grapes','Great grapes','grapes.jpg',2.50,4,'2021-01-25 10:21:57','2021-01-25 10:21:57'),
(10,'Grey shirt','grey-shirt','A grey shirt','grey shirt.jpg',3.99,1,'2021-01-25 10:22:14','2021-01-25 10:22:14'),
(11,'Kiwi','kiwi','Fresh kiwi','kiwi.jpg',4.99,4,'2021-01-25 10:22:31','2021-01-25 10:22:31'),
(12,'Pink shirt','pink-shirt','A pink shirt','pink shirt.jpg',7.99,1,'2021-01-25 10:22:49','2021-01-25 10:22:49'),
(13,'Watermelon','watermelon','Juicy watermelon','watermelon.jpg',1.50,4,'2021-01-25 10:23:16','2021-01-25 10:23:16'),
(14,'White shirt','white-shirt','A white shirt','white shirt.jpg',4.50,1,'2021-01-25 10:23:38','2021-01-25 10:23:38'),
(15,'Yellow shirt','yellow-shirt','A yellow shirt','yellow shirt.jpg',3.50,1,'2021-01-25 10:23:54','2021-01-25 10:23:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `users` VALUES
(1,'john','$2a$10$bGhZfIXHzovtoRXUGe7Z5.WrQOffSz615MUOHLZRz7hqvnr25aPsa','john@email.com','3123456'),
(2,'bill','$2a$10$KP2..LbNsQ.4ZlkH0pyIkei.LMFBUjCZw.VIfbkd5outO0CdNUdFm','bill@email.com','123456');
UNLOCK TABLES;