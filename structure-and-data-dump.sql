-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)

--

-- Host: 127.0.0.1    Database: post_app_db

-- ------------------------------------------------------

-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!50503 SET NAMES utf8 */

;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */

;

/*!40103 SET TIME_ZONE='+00:00' */

;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */

;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */

;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */

;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */

;

--

-- Table structure for table `posts`

--

DROP TABLE IF EXISTS `posts`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;
 CREATE TABLE `posts` (
	`id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'created at time',
	`title` varchar(255) DEFAULT NULL COMMENT 'title',
	`body` varchar(255) DEFAULT NULL COMMENT 'content',
	`image` longtext COMMENT 'image url',
	`category` VARCHAR(255) DEFAULT NULL COMMENT 'category',
	`uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'user id',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 52 DEFAULT CHARSET = utf8mb3 COMMENT = 'newTable';

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `posts`

--

LOCK TABLES `posts` WRITE;

/*!40000 ALTER TABLE `posts` DISABLE KEYS */

;

INSERT INTO
	`posts`
VALUES
	(
		1,
		'2022-04-28 13:49:29',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'1'
	),(
		14,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'1'
	),(
		15,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'2'
	),(
		16,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'2'
	),(
		17,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet kød/fisk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meat.jpg',
		'meat',
		'3'
	),(
		18,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'3'
	),(
		19,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'4'
	),(
		20,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'5'
	),(
		21,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'6'
	),(
		22,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'6'
	),(
		23,
		'2022-04-28 15:20:39 ',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'7'
	),(
		24,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'4'
	),(
		25,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'8'
	),(
		26,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'8'
	),(
		28,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet kød/fisk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meat.jpg',
		'meat',
		'9'
	),(
		29,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet kød/fisk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meat.jpg',
		'meat',
		'2'
	),(
		30,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'12'
	),(
		31,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'11'
	),(
		32,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'2'
	),(
		33,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'2'
	),(
		34,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet kød/fisk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meat.jpg',
		'meat',
		'4'
	),(
		35,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'3'
	),(
		36,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'11'
	),(
		37,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'2'
	),(
		38,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'2'
	),(
		39,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'3'
	),(
		40,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet mad fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'meals.jpg',
		'meals',
		'6'
	),(
		41,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede grøntsager fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'vegetables.jpg',
		'vegetables',
		'10'
	),(
		42,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandet bagværk fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'bakery.jpg',
		'bakery',
		'12'
	),(
		43,
		'2022-04-28 15:20:39',
		'Lykkepose',
		'Red en lykkepose med blandede mælkeprodukter fra dagen. Husk at posens indhold vil variere dag for dag, så lad indholdet overraske dig.',
		'dairy.jpg',
		'dairy',
		'12'
	);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */

;

UNLOCK TABLES;

--

-- Table structure for table `users`

--

DROP TABLE IF EXISTS `users`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE `users` (
	`id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
	`image` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'user image',
	`title` varchar(255) DEFAULT NULL COMMENT 'user title',
	`mail` varchar(255) DEFAULT NULL COMMENT 'user mail',
	`name` varchar(255) DEFAULT NULL COMMENT 'user name',
	`phone` varchar(255) DEFAULT NULL COMMENT 'user phone',
	`password` varchar(60) DEFAULT NULL,
	`admin` BIT DEFAULT NULL COMMENT 'admin rights',
	`street` VARCHAR(255) DEFAULT NULL COMMENT 'address street',
	`zipcode` VARCHAR(255) DEFAULT NULL COMMENT 'address zipcode',
	`city` VARCHAR(255) DEFAULT NULL COMMENT 'address city',
	PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8mb3 COMMENT = 'newTable';

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `users`

--

LOCK TABLES `users` WRITE;

/*!40000 ALTER TABLE `users` DISABLE KEYS */

;

SELECT * FROM users;

INSERT INTO
	`users` (
		id,
		image,
		title,
		mail,
		name,
		phone,
		password,
		admin,
		street,
		zipcode,
		city
	)
VALUES
	(
		1,
		'img-placeholder.jpg',
		NULL,
		'aarhusc@circlek.dk',
		'Circle K - Aarhus C',
		'86130777',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Silkeborgvej 4',
		'8000',
		'Aarhus C'
	),(
		2,
		'img-placeholder.jpg',
		NULL,
		'aarhusn@circlek.dk',
		'Circle K - Aarhus N',
		'86168336',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Skovvangsvej 211',
		'8200',
		'Aarhus N'
	),(
		3,
		'img-placeholder.jpg',
		'Senior Lecturer',
		'brabrand@circlek.dk',
		'Circle K - Brabrand',
		'86253388',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Silkeborgvej 573',
		'8220',
		'Brabrand'
	),(
		4,
		'img-placeholder.jpg',
		NULL,
		'q8aarhusn@q8.dk',
		'Q8 - Randersvej',
		'86165516',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Randersvej 162',
		'8200',
		'Aarhus N'
	),(
		5,
		'img-placeholder.jpg',
		NULL,
		'aldiaarhusc@aldi.dk',
		'Aldi - Grønnegade',
		'70707417',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Grønnegade 57',
		'8000',
		'Aarhus C'
	),(
		6,
		'img-placeholder.jpg',
		NULL,
		'føtexguldsmedgade@føtex.dk',
		'føtex Food - Guldsmedgade',
		'89417000',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Guldsmedgade 3',
		'8000',
		'Aarhus C'
	),(
		7,
		'img-placeholder.jpg',
		NULL,
		'lagkagehusetmagasin@lagkagehuset.dk',
		'Lagkagehuset - Magasin',
		'70705023',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		'Immervad 2',
		'8000',
		'Aarhus C'
	),(
		8,
		'img-placeholder.jpg',
		NULL,
		'starbucksborgporten@starbucks.dk',
		'Starbucks - Borgporten',
		'20485537',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		"Store Torv 18 Borgporten",
		"8000",
		"Aarhus C"
	),(
		9,
		'img-placeholder.jpg',
		NULL,
		'espressofrederiksgade@espressohouse.dk',
		'Espresso House - Frederiksgade',
		'51636959',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		"Frederiksgade 5",
		"8000",
		"Aarhus C"
	),(
		10,
		'img-placeholder.jpg',
		NULL,
		'7elevennørreport@7eleven.dk',
		'7-Eleven - Nørreport',
		'86199677',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		"Nørreport 28",
		"8000",
		"Aarhus C"
	),(
		11,
		'img-placeholder.jpg',
		NULL,
		'sushimaniabruuns@sushimania.dk',
		'SushiMania - Bruuns Galleri',
		'53725008',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		"M. P. Bruuns Gade 25",
		"8000",
		"Aarhus C"
	),(
		12,
		'img-placeholder.jpg',
		NULL,
		'flammenaarhus@flammen.dk',
		'Restaurant Flammen - Aarhus',
		'35266364',
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		"Toldbodgade 6",
		"8000",
		"Aarhus C"
	),(
		13,
		"img-placeholder.jpg",
		null,
		"admin@admin.dk",
		"Admin",
		null,
		'$2y$10$a2hYiZyslZVEjhCn5WUl2./DkvJxureeR64pepdLKADq4JCdM1bzu',
		1,
		NULL,
		NULL,
		NULL
	);

-- UPDATE users SET `admin` = 1 WHERE id = 15;

/*!40000 ALTER TABLE `users` ENABLE KEYS */


CREATE TABLE `favorites` (
	`id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
	`postid` int NOT NULL COMMENT 'Primary Key',
	`uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'user id',
	PRIMARY KEY (`id`)
);


INSERT INTO `favorites`(postid, uid) VALUES (14, 13);


;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */

;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */

;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */

;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */

;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */

;

-- Dump completed on 2022-05-03  9:24:31