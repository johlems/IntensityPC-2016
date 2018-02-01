DROP TABLE IF EXISTS asset_archive;

CREATE TABLE `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO asset_archive VALUES("1","Professional Standard Box Camera ","8000","products/1.JPG","Sensor Type: 1/3 Sony High Resolution CCD Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperating Temp: -10? C-50?C\n\n\n\nIllumination: 1.0Lux @ F1.2\n\n\n\n","95","August 5, 2015 11:34:pm ");


DROP TABLE IF EXISTS asset_depreciation;

CREATE TABLE `asset_depreciation` (
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `salvage_val` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `depmed` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO asset_depreciation VALUES("1","20000","500","5","2");
INSERT INTO asset_depreciation VALUES("2","15000","200","5","1");
INSERT INTO asset_depreciation VALUES("3","1500","200","5","1");


DROP TABLE IF EXISTS audit_trail;

CREATE TABLE `audit_trail` (
  `KeyID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL,
  PRIMARY KEY (`KeyID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO audit_trail VALUES("1","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("2","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("3","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 4 Name Leo Aranzamendez Message was deleted!");
INSERT INTO audit_trail VALUES("4","4","DAVIS_SERVER","September 15, 2015 6:06:pm  ","Inserted","Announcement = JRU New Announcement was created");
INSERT INTO audit_trail VALUES("5","4","DAVIS_SERVER","November 10, 2016 7:00:pm  ","Move","ProductID 1 Name= Professional Standard Box Camera  was move to Archive");


DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS comment;

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS customer_archive;

CREATE TABLE `customer_archive` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Richmon","Bardon","Sabello","1995-09-15","522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City","Mandaluyong City","09434138521","Male","sabellorichmon@yahoo.com","11a00f3677902d1dec0aeccacc16d464","August 5, 2015 11:34:pm  ","active");
INSERT INTO customers VALUES("2","Benjie","Ilano","Alfanta","1995-11-30","Pureza st. sta mesa manila","Manila City","09364987102","Male","benjiealfanta@yahoo.com","a432fa61bf0d91ad0c3d2b26ae8ace94","August 5, 2015 11:35:pm  ","active");
INSERT INTO customers VALUES("3","Julius","Dela pena","Felicen","1995-07-31","Flood way black 1","Taytay Rizal","09109223103","Male","juliusfelicen@yahoo.com","fb154fdee061037d6f6bcec2eecfe688","August 12, 2015 4:07:pm  ","active");
INSERT INTO customers VALUES("4","Leo","Bonife","Aranzamendez","1995-09-29","369 Wayan,Palali","Manila City","09364987102","Male","itchigo.aranzamendez@yahoo.com","8eef495e2875ec79e82dd886e58f26bd","August 12, 2015 4:08:pm  ","active");
INSERT INTO customers VALUES("5","Allan","Carada","Aparis","1974-12-27","17 edsa","Mandaluyong City","5715693","Male","aa2000ent@gmail.com","dfc91587736b342423abefd7a2328de4","August 26, 2015 2:14:pm  ","active");
INSERT INTO customers VALUES("6","Raffy","Bardon","Sabello","1985-02-03","522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City","Mandaluyong City","09364987102","Male","sabellorap@yahoo.com","25f9e794323b453885f5181f1b624d0b","September 16, 2015 12:56:am  ","active");
INSERT INTO customers VALUES("7","Jm","Olar","Lema","1992-01-21","Quezon city","Quezon City","09124501670","Female","jm@gmail.com","948dec6929afed5e16a510e7ae9207e2","November 10, 2016 4:00:pm  ","inactive");


DROP TABLE IF EXISTS dep_method;

CREATE TABLE `dep_method` (
  `methodID` int(11) NOT NULL,
  `dep_method` varchar(50) NOT NULL,
  PRIMARY KEY (`methodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO dep_method VALUES("1","Straight Line Depreciation");
INSERT INTO dep_method VALUES("2","Double Declining Balance Depreciation");


DROP TABLE IF EXISTS item_category;

CREATE TABLE `item_category` (
  `category_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO item_category VALUES("1","Office Machine");
INSERT INTO item_category VALUES("2","Computer Accessories");
INSERT INTO item_category VALUES("3","Furniture");
INSERT INTO item_category VALUES("4","Filing & Storage");
INSERT INTO item_category VALUES("5","Office Supplies");


DROP TABLE IF EXISTS loginout_history;

CREATE TABLE `loginout_history` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO loginout_history VALUES("1","1","sabellorichmon@yahoo.com","Richmon","September 7, 2015 5:26:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("2","1","sabellorichmon@yahoo.com","Richmon","September 11, 2015 1:52:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("3","1","sabellorichmon@yahoo.com","Richmon","September 11, 2015 2:07:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("4","1","sabellorichmon@yahoo.com","Richmon","September 13, 2015 10:41:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("5","1","sabellorichmon@yahoo.com","Richmon","September 14, 2015 11:11:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("6","1","sabellorichmon@yahoo.com","Richmon","September 14, 2015 1:56:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("7","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 3:11:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("8","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 4:14:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("9","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 6:05:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("10","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 6:06:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("11","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 10:18:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("12","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 11:09:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("13","1","sabellorichmon@yahoo.com","Richmon","September 16, 2015 12:55:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("14","1","sabellorichmon@yahoo.com","Richmon","September 16, 2015 12:55:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("15","6","sabellorap@yahoo.com","Raffy","September 16, 2015 1:26:am  ","September 16, 2015 1:30:am  ");
INSERT INTO loginout_history VALUES("16","6","sabellorap@yahoo.com","Raffy","September 16, 2015 1:30:am  ","September 16, 2015 1:30:am  ");
INSERT INTO loginout_history VALUES("17","7","jm@gmail.com","Jm","November 10, 2016 4:00:pm  ","");


DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO loginout_serverhistory VALUES("1","3","JULIUS_ADS","Julius  Felicen","September 7, 2015 6:31:pm  ","September 11, 2015 2:30:pm ");
INSERT INTO loginout_serverhistory VALUES("2","2","LEO_AS","Leo Aranzamendez","September 7, 2015 6:34:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("3","2","LEO_AS","Leo Aranzamendez","September 7, 2015 6:34:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("4","1","BENJIE_OOS","Benjie I. Alfanta","September 7, 2015 6:35:pm  ","September 15, 2015 11:08:pm ");
INSERT INTO loginout_serverhistory VALUES("5","3","JULIUS_ADS","Julius  Felicen","September 11, 2015 2:29:pm  ","September 11, 2015 2:30:pm ");
INSERT INTO loginout_serverhistory VALUES("6","2","LEO_AS","Leo Aranzamendez","September 11, 2015 2:30:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("7","1","BENJIE_OOS","Benjie I. Alfanta","September 11, 2015 2:31:pm  ","September 15, 2015 11:08:pm ");
INSERT INTO loginout_serverhistory VALUES("8","2","LEO_AS","Leo Aranzamendez","September 13, 2015 10:16:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("9","1","BENJIE_OOS","Benjie I. Alfanta","September 14, 2015 1:55:pm  ","September 15, 2015 11:08:pm ");
INSERT INTO loginout_serverhistory VALUES("10","1","BENJIE_OOS","Benjie I. Alfanta","September 15, 2015 11:07:pm  ","September 15, 2015 11:08:pm ");


DROP TABLE IF EXISTS message;

CREATE TABLE `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO message VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","wqe`s","sdasdasda","September 15, 2015 9:21:pm  ","Seen");


DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","Seen","2015-09-15");


DROP TABLE IF EXISTS order_details;

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL,
  PRIMARY KEY (`Orderdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO order_details VALUES("1","1","1","8000","95","1","1");


DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `Date_paid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  `tax` int(11) NOT NULL,
  `shipping_address` varchar(100) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES("1","1","8000","2015-09-15","September 15, 2015 4:16:pm  ","Confirmed","Delivered","AA0011","960","522 San jose sitio 4  Mandaluyong City");


DROP TABLE IF EXISTS purchases;

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS reply_message;

CREATE TABLE `reply_message` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO reply_message VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","Richmon Davis B. Sabello","thank you","September 15, 2015 9:22:pm  ","Seen");


DROP TABLE IF EXISTS sent_messages;

CREATE TABLE `sent_messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO sent_messages VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","wqe`s","sdasdasda","September 15, 2015 9:21:pm  ","");


DROP TABLE IF EXISTS tb_announcement;

CREATE TABLE `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`announcementID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_announcement VALUES("1","Price Php 1,000 only","2015-07-16 00:30:00","PROMO FOR The Day","MANDALUYONG","upload/4.JPG","Seen");
INSERT INTO tb_announcement VALUES("2","PRomo","2015-07-16 18:00:00","PROMO FOR The Day","JRU121231","upload/5.JPG","Seen");
INSERT INTO tb_announcement VALUES("3","asdasdasdas","2015-09-15 18:05:00","JRU","JRU","upload/11.JPG","Seen");


DROP TABLE IF EXISTS tb_equipment;

CREATE TABLE `tb_equipment` (
  `item_id` int(11) NOT NULL,
  `item_code` text NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `item_category` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `date_post` varchar(20) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_equipment VALUES("1","JHasdks6328HYd","Laptop","ASUS","20000","Mark Dave ","2","Damage","Deeco","2015-09-13");
INSERT INTO tb_equipment VALUES("2","43dsffc234htyet","Desktop","ACER","15000","Rhea Dela Crus","2","Good","Deeco","2015-09-13");


DROP TABLE IF EXISTS tb_productreport;

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_productreport VALUES("1","100","");
INSERT INTO tb_productreport VALUES("2","100","");
INSERT INTO tb_productreport VALUES("3","100","");
INSERT INTO tb_productreport VALUES("4","100","");
INSERT INTO tb_productreport VALUES("5","100","");
INSERT INTO tb_productreport VALUES("6","100","");
INSERT INTO tb_productreport VALUES("7","100","");
INSERT INTO tb_productreport VALUES("8","100","");
INSERT INTO tb_productreport VALUES("9","50","");
INSERT INTO tb_productreport VALUES("10","30","");
INSERT INTO tb_productreport VALUES("11","20","");


DROP TABLE IF EXISTS tb_products;

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_products VALUES("2","CCD Sony 1/3 Dome Type Camera    ","4365","products/2.JPG","Product Description\n\n\n\nCCD Sony 1/3 Dome Type Camera\n\n\n\n3.6 mm Lens \n\n\n\nSensor Type: 1/3 Sony CC Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperation Temp: -10? C-50?C\n\n\n\nIllumination: 1Lux / 00.3Lux\n\n\n\n","95","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("3","KD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless","5200","products/3.JPG","Product Description\n\nKD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless\n\n1/3 Sony Super HAD II CCD, Color: 0.3Lux (480TVL); Color 0.1Lux\n\n(600TVL), 4/6/8mm fixed lens optional, IR\n\nDistance: 30m\n\nDimension: 173mm (L) x102mm (W) x93mm (H); N.W.:1.5kg\n\n","99","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("4","KD-DP73XD22 With zoom camera ZCN-21Z22, 22x10 zoom","10000","products/4.JPG","  1. 7? IP low speed dome, indoor/outdoor\n\n  2. Manual Pan/tilt:6 /S,9?/S,12?/S,15?/S,Turn\n\n   Angle: Horizontal: 360? endless, Vertical: 90?\n\n  3. 64 preset, 1 tour groups \n\n  4. DC15V, 2A\n\n   KD-DP73XD22\n\n   With zoom camera ZCN-21Z22, 22x10 zoom, color 0.5Lux 580TVL, \n\n   B/W 0.02Lux 650TVL,\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("5","220X Day/Night Color CCD ZOOM Camera with 1/4 ?i","15000","products/5.JPG","Type: Auto Focus power zoom camera\n\nImage sensor: 1/4 ?SONY COLOR CCD\n\nEffect Pixels: 768(H) x 494(V) /470TV Line\n\nMin. Illumination: 3Lux /1.6\n\nS/N Ration: 46dB (AGC OFF, fsc trap)\n\nLens: 22 X zoom, F/1.6 (W) 3.7(T) f=3.6 (w) 79.2(T)mm\n\nZoom: Optical 22X, Digital 10X\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("6","Bullet Type Covert Camera","1800","products/6.JPG","Bullet Type Covert Camera\nSensor Type: 1/3 Sony CCD Chipset\nSystem of Signal: NTSC\nHorizontal Resolution: 420 TV Lines\nOperating Temp: -10° C-50° C\nIllumination: 1Lux\n","100","September 1, 2015 8:22:pm  ");
INSERT INTO tb_products VALUES("7","Weatherproofed Camera with Infra-Red","2800","products/7.JPG","Weatherproofed Camera with Infra-Red\nSensor Type: 1/3 Sony CCD Chipset\nSystem of Signal: NTSC\nHorizontal Resolution: 520 TV Lines\nOperating Temp: -10°C-50°C\nIllumination: 0.03Lux\nPower Supply: DC12V\nIR Distance: 50m","100","September 1, 2015 11:40:pm  ");
INSERT INTO tb_products VALUES("8","ACTI PTZD91","2000","products/8.JPG","Product Type-	Mini Dome,\nMaximum Resolution: 1MP,\nApplication Environment:	Indoor,\nImage Sensor:	Progressive Scan CMOS,\nDay / Night: No","100","September 2, 2015 12:33:am  ");
INSERT INTO tb_products VALUES("9","VC IRD720P- ANALOG DOME TYPE CAMERA","6000","products/9.JPG","6MM Lens\nCMOS 800TVL chipset\n24pcs IR LED\nNTSC\nDC12V\nWithout osd Metal Case\nColor White","50","September 2, 2015 12:40:am  ");
INSERT INTO tb_products VALUES("10","VC IRW720P- ANALOG BULLET TYPE CAMERA","5000","products/10.JPG","IR Waterproof with Bracket\nCMOS 800TVL\n6MM Lens\n24pcs IR LED\nNTSC\nDC 12V\nWithout osd\nWhite","30","September 2, 2015 12:42:am  ");
INSERT INTO tb_products VALUES("11","VC‐D42S720-ANALOG BULLET TYPE CAMERA","5500","products/11.JPG","NVP2431+OV9712 with OSD Cable\nIR LED: ￠5X42PCS IR range: 40M\n8‐12mm CS Lens\nWater resistance: IP66\n3‐Axis cable built‐in bracket\nSize: 242W) x 84(H) x 86(D)mm\nWeight: 1.6KG","19","September 2, 2015 12:52:am  ");


DROP TABLE IF EXISTS tb_sentmessage;

CREATE TABLE `tb_sentmessage` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tb_sentmessage VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","Richmon Davis B. Sabello","thank you","September 15, 2015 9:22:pm  ","");


DROP TABLE IF EXISTS tb_user;

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_user VALUES("1","BENJIE_OOS","e10adc3949ba59abbe56e057f20f883e","3","Benjie I. Alfanta");
INSERT INTO tb_user VALUES("2","LEO_AS","e10adc3949ba59abbe56e057f20f883e","2","Leo Aranzamendez");
INSERT INTO tb_user VALUES("3","JULIUS_ADS","e10adc3949ba59abbe56e057f20f883e","1","Julius  Felicen");
INSERT INTO tb_user VALUES("4","DAVIS_SERVER","11a00f3677902d1dec0aeccacc16d464","4","Richmon Davis B. Sabello");


DROP TABLE IF EXISTS user_type;

CREATE TABLE `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO user_type VALUES("1","ADVERTISING Admin");
INSERT INTO user_type VALUES("2","ASSET Admin");
INSERT INTO user_type VALUES("3","ONLINE ORDERING Admin");
INSERT INTO user_type VALUES("4","SUPER Admin");


