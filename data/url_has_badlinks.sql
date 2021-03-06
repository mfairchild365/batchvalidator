CREATE TABLE IF NOT EXISTS `url_has_badlinks` (
  `baseurl` varchar(255) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `link_url` varchar(1000) NOT NULL,
  `code` int NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`baseurl`,`url`(500),`link_url`(500)),
  CONSTRAINT FOREIGN KEY (`baseurl`) REFERENCES `assessment_runs`(`baseurl`) ON DELETE CASCADE,
  KEY `url` (`url`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE INDEX `url_has_badlinks_baseurl` ON `url_has_badlinks`(`baseurl`);
