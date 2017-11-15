# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: joaobelo.pt (MySQL 5.5.5-10.0.32-MariaDB)
# Database: joaobelo_api
# Generation Time: 2017-11-15 22:41:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table login_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login_users`;

CREATE TABLE `login_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_lvl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `login_users` WRITE;
/*!40000 ALTER TABLE `login_users` DISABLE KEYS */;

INSERT INTO `login_users` (`id`, `username`, `password`, `user_lvl`)
VALUES
	(1,'admin','-------------------',9);

/*!40000 ALTER TABLE `login_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table public_highlights
# ------------------------------------------------------------

DROP TABLE IF EXISTS `public_highlights`;

CREATE TABLE `public_highlights` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `public_highlights` WRITE;
/*!40000 ALTER TABLE `public_highlights` DISABLE KEYS */;

INSERT INTO `public_highlights` (`id`, `date`, `type`, `title`, `info`)
VALUES
	(1,'2007-09-14','school','Started Communication Design at FBAUP','Enrolled the Faculty of Fine Arts of the University of Porto, in the Communication Design course.'),
	(2,'2007-10-01','life','Moved to Porto','Got a place in Porto to sleep closer to the university.\nThe train ride was too tiring for everyday commuting.'),
	(3,'2009-09-01','school','Semester abroud in Poland','Moved to Katowice (Poland) for 6 months with the Erasmus program at the <a href=\"https://www.asp.katowice.pl\">Katowice Faculty of Design</a> in the field of Graphic Design.'),
	(4,'2010-03-01','life','Back to Portugal','Moved back from Poland.'),
	(5,'2012-09-10','job','Interned at Ubiwhere','Got some experience in both the fields of design and tech, while designing for ubiquos technologies at <a href=\"http://www.ubiwhere.com\">Ubiwhere</a>.'),
	(6,'2012-09-10','school','Graduated from FBAUP','Graduated with a degree in Communication Design.'),
	(7,'2013-07-01','job','Interned at MPFX Design','A little more experience in the field of design, focused on wine labels and some 3D artwork.'),
	(8,'2013-08-01','job','Interned at 327 Creative Studio','Professional internship at <a target=\"_blank\" href=\"http://327.pt\">327 Creative Studio</a> as web developer.'),
	(9,'2014-12-01','job','Joined 327','Joined full time at <a target=\"_blank\" href=\"http://327.pt\">327 Creative Studio</a>.\nMainly web development and some multimedia content.'),
	(10,'2013-03-14','school','Got my CCP','Finished the course to get my Certificate of Pedagogical Competencies at Zona Verde');

/*!40000 ALTER TABLE `public_highlights` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table public_projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `public_projects`;

CREATE TABLE `public_projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `tools` varchar(255) DEFAULT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `public_projects` WRITE;
/*!40000 ALTER TABLE `public_projects` DISABLE KEYS */;

INSERT INTO `public_projects` (`id`, `name_id`, `name`, `tags`, `type`, `external_url`, `tools`, `description`, `date`)
VALUES
	(1,'tiago-moutinho','Tiago Moutinho','design, multimedia','website','http://tiagomoutinho.com','html, css, jquery','web design by Tiago Moutinho','2013-01-01'),
	(6,'eio','EIO','eio','website','http://eio.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2014-03-01'),
	(14,'outlines','Outlines',NULL,'website','http://outlines.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2015-03-27'),
	(4,'boa-energia','Boa Energia',NULL,'website','http://boaenergia.pt','wordpress, woocomerce','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2015-03-11'),
	(5,'ppdc','PPDC',NULL,'website','http://ppdcstudio.com','html, css, js, jquery, php','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2013-12-01'),
	(7,'dreamdomus','Dreamdomus','construção modular, domótica, segurança, climatização','website','http://dreamdomus.com','html, css, js, jquery, php, custom cms','web design by Tiago Moutinho','2014-03-25'),
	(10,'oes','Ourivesaria em Segurança',NULL,'website','http://ourivesariaemseguranca.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2014-08-06'),
	(11,'aorp','AORP','Associação de Ourivesaria e Relojoaria de Portugal','website','http://aorp.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2014-12-20'),
	(13,'outside-the-box','Outside the Box',NULL,'website','http://outsidethebox.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2013-11-01'),
	(15,'pratica04','Prática.04',NULL,'website','http://pratica04.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2015-07-01'),
	(16,'combi-coffee','Combi Coffee',NULL,'website','http://combicoffee.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2015-10-20'),
	(17,'327','327 Creative Studio',NULL,'website','http://327.pt','angular2, html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2015-11-18'),
	(18,'baby-gi','Baby Gi',NULL,'website','http://babygi.pt','html, css, jquery','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2016-03-07'),
	(19,'anabela-peres-de-sousa','Anabela Peres de Sousa','Clínica dentária','website','http://anabelaperesdesousa.pt','angular2, html, css, js','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2016-04-10'),
	(21,'srnom','Secção Regional do Norte Ordem dos Médicos','Secção Regional do Norte Ordem dos Médicos','website','http://nortemedico.pt','angular2, html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2016-10-10'),
	(22,'cesar-oliveira','César Oliveira fotografia','César Oliveira, fotografia, portfolio','website','http://cesaroliveirafotografia.com','html, css, js, jquery, php, custom cms','web design by Sergio Campos','2016-10-09'),
	(23,'ess','ESS','ESS engenharia','website','http://ess.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2017-01-05'),
	(24,'cidades-de-excelencia','Cidades de Excelência','cidades de excelência urbanismo acessibilidade','website','http://cidadesdeexcelencia.org','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2017-03-06'),
	(25,'plataforma-do-mar','Plataforma do Mar','plataforma do mar','website','http://plataformadomar.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2017-05-07'),
	(26,'riopele','Riopele','Riopele','website','https://riopele.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2017-08-08'),
	(27,'vimaplas','Vimaplás','Vimaplás','website','http://vimaplas.pt','html, css, js, jquery, php, custom cms','project developed at <a href=\"http://327.pt\" target=\"_blank\">327 creative studio</a>','2017-09-15'),
	(28,'joaobelo','João Belo','João Belo','website','https://joaobelo.pt','html, stylus, js, json api','version 5 of joaobelo.pt<br>check out how I made it <a target=\"_blank\" href=\"https://github.com/jpbelo/joaobelo-v5\">here</a>','2017-11-15');

/*!40000 ALTER TABLE `public_projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table public_social
# ------------------------------------------------------------

DROP TABLE IF EXISTS `public_social`;

CREATE TABLE `public_social` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `public_social` WRITE;
/*!40000 ALTER TABLE `public_social` DISABLE KEYS */;

INSERT INTO `public_social` (`id`, `github`, `twitter`, `linkedin`, `email`)
VALUES
	(1,'https://github.com/jpbelo','https://twitter.com/jpasbelo','https://www.linkedin.com/in/joaobelo','mail@joaobelo.pt');

/*!40000 ALTER TABLE `public_social` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
