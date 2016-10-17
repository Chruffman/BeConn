CREATE TABLE IF NOT EXISTS `Event` (
`Id` int(1) NOT NULL auto_increment,
`Name` varchar(40) NOT NULL,
`Address` varchar(100) NOT NULL,
`Longitude` float NOT NULL,
`Latitude` float NOT NULL,
`Host` varchar(40) NOT NULL,
`Time` DATE NOT NULL,
 `Zip` int(1) NOT NULL,

PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;
INSERT INTO `Event` (`Id`, `Name`, `Address`,`Longitude`,`Latitude`,`Host`,`Time`,`Zip`) VALUES
(1, 'John Doe', '123 Fake Street', 40.0, 105.0, 'Jane Doe','2016-10-17 02:02:02', 80302),
(2, 'Billy Bob', '456 Fake Street', 40.0, 105.0, 'JJ', '2016-10-17 02:02:02', 80302);

CREATE TABLE IF NOT EXISTS `User` (
`Id` int(1) NOT NULL auto_increment,
`Username` varchar(40) NOT NULL,
`Password` varchar(40) NOT NULL,
`Email` varchar(100) NOT NULL,
`Zip` int(1) NOT NULL,

PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `User` (`Id`,`Username`,`Password`,`Email`,`Zip`) VALUES
(1, 'Jane Doe','password','JaneDoe@dead.com',80302),
(2, 'JJ','password','JJ@dead.com',80302);

CREATE TABLE IF NOT EXISTS `Location` (
`Id` int(1) NOT NULL auto_increment,
`#Events` int(1) NOT NULL,
`Zip` int(1) NOT NULL,
`#locals` int(1) NOT NULL,
`Name` varchar(40) NOT NULL,

PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;
INSERT INTO `Location` (`Id`,`#Events`,`Zip`,`#locals`,`Name`) VALUES
(1, 1,80302,2,'Boulder');




