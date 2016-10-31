CREATE TABLE IF NOT EXISTS `Event` (
`Id` int NOT NULL auto_increment,
`Name` varchar(200) NOT NULL,
`Address` varchar(200) NOT NULL,
`Host` varchar(100) NOT NULL,
`Time` DATETIME NOT NULL,
 `Zip` int NOT NULL,

PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;
INSERT INTO `Event` (`Id`, `Name`, `Address`,`Host`,`Time`,`Zip`) VALUES
(1, 'Soccer Pickup', '6000 Victory Way', 'Jane Doe','2016-10-17 02:02:02', 80022),
(2, 'Shindig', '909 14th Street', 'John Doe','2016-10-18 03:03:03', 80302),
(3, 'Ping Pong World Series', '770 29th Street', 'Maestro','2016-10-19 04:04:04', 80303),
(4, 'Concert', '18300 W Almeda Pkwy', 'JJ','2016-10-20 05:05:05', 80465),
(5, 'Convention', '700 14th Street', 'Jimmy Neutron','2016-10-21 06:06:06', 80202);

CREATE TABLE IF NOT EXISTS `User` (
`Id` int(1) NOT NULL auto_increment,
`Username` varchar(40) NOT NULL,
`Password` varchar(40) NOT NULL,
`Email` varchar(100) NOT NULL,
`Zip` int(1) NOT NULL,

PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `User` (`Id`,`Username`,`Password`,`Email`,`Zip`) VALUES
(1, 'Jane Doe','password1','JaneDoe@dead.com',80302),
(2, 'John Doe','password2','JohnDoe@dead.com',80302),
(3, 'Maestro','password3','Maestro@dead.com',80302),
(4, 'JJ','password4','JJ@dead.com',80302),
(5, 'Jimmy Neutron','password5','JimmyNeutron@alive.com',80302);

CREATE TABLE IF NOT EXISTS `Location` (
`Id` int(1) NOT NULL auto_increment,
`#Events` int(1) NOT NULL,
`Zip` int(1) NOT NULL,
`#locals` int(1) NOT NULL,
`Name` varchar(40) NOT NULL,
`Latitude` int NOT NULL,
`Longitude` int NOT NULL,


PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;
INSERT INTO `Location` (`Id`,`#Events`,`Zip`,`#locals`,`Name`,`Latitude`,`Longitude`) VALUES
(1, 1,80022,0,'Commerce City',39.805736, -104.891780),
(2, 1,80302,5,'Boulder',40.003523, -105.275008),
(3, 1,80303,0,'Boulder',40.000613, -105.255289),
(4, 1,80465,0,'Morrison',39.666973, -105.205835),
(5, 1,80202,0,'Denver',39.742495, -104.996753);
