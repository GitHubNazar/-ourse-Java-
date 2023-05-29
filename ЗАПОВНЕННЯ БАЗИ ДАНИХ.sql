USE car_dealership;
DELETE FROM accounts;
DELETE FROM order_details;
DELETE FROM orders;
DELETE FROM vehicle;

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('employee1',_binary '','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','ROLE_EMPLOYEE'),('manager1',_binary '','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','ROLE_MANAGER');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
USE car_dealership;
INSERT INTO accounts (user_name, ACTIVE, ENCRYTED_PASSWORD, USER_ROLE) VALUES
('admin', b'1', '123456', 'ADMIN'),
('user1', b'1', 'abcdef', 'USER'),
('user2', b'0', 'ghijkl', 'USER'),
('user3', b'1', 'mnopqr', 'USER'),
('user4', b'1', 'stuvwx', 'USER'),
('user5', b'0', 'yzabcd', 'USER'),
('user6', b'1', 'efghij', 'USER'),
('user7', b'1', 'klmnop', 'USER'),
('user8', b'0', 'qrstuv', 'USER'),
('user9', b'1', 'wxyzab', 'USER'),
('user10', b'1', 'cdefgh', 'USER');
USE car_dealership;
INSERT INTO vehicle (CODE, IMAGE, MODEL, PRICE, CREATE_DATE, MANUFACTURER) VALUES
('V001', NULL, 'Toyota Corolla', 20000.00, '2023-04-23 12:05:18', 'Toyota'),
('V002', NULL, 'Honda Civic', 18000.00, '2023-04-22 10:15:32', 'Honda'),
('V003', NULL, 'Ford Focus', 17000.00, '2023-04-21 09:45:27', 'Ford'),
('V004', NULL, 'Nissan Sentra', 19000.00, '2023-04-20 11:30:19', 'Nissan'),
('V005', NULL, 'Hyundai Elantra', 16000.00, '2023-04-19 08:25:14', 'Hyundai'),
('V006', NULL, 'Chevrolet Cruze', 15000.00, '2023-04-18 07:10:09', 'Chevrolet'),
('V007', NULL, 'Mazda 3', 21000.00, '2023-04-17 13:20:24', 'Mazda'),
('V008', NULL, 'Kia Forte', 14000.00, '2023-04-16 06:05:04', 'Kia'),
('V009', NULL, 'Volkswagen Jetta', 22000.00, '2023-04-15 14:35:29', 'Volkswagen'),
('V010', NULL, 'Subaru Impreza', 23000.00, '2023-04-14 15:50:34', 'Subaru');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD001', 100.00, '123 Main Street', 'john@example.com', 'John Smith', '555-1234', '2023-05-21 14:46:12', 1),
('ORD002', 200.00, '456 High Street', 'mary@example.com', 'Mary Jones', '555-5678', '2023-05-21 14:50:23', 2),
('ORD003', 150.00, '789 Park Avenue', 'bob@example.com', 'Bob Lee', '555-9012', '2023-05-21 14:55:34', 3),
('ORD004', 250.00, '321 Low Street', 'alice@example.com', 'Alice Green', '555-3456', '2023-05-21 15:00:45', 4),
('ORD005', 300.00, '654 Hill Street', 'david@example.com', 'David Brown', '555-7890', '2023-05-21 15:05:56', 5),
('ORD006', 350.00, '987 Lake Street', 'emma@example.com', 'Emma White', '555-4321', '2023-05-21 15:11:07', 6),
('ORD007', 400.00, '147 River Street', 'jack@example.com', 'Jack Black', '555-8765', '2023-05-21 15:16:18', 7),
('ORD008', 450.00, '258 Ocean Street', 'lily@example.com', 'Lily Gray', '555-6543', '2023-05-21 15:21:29', 8),
('ORD009', 500.00, '369 Forest Street', 'ryan@example.com', 'Ryan Wood', '555-0987', '2023-05-21 15:26:40', 9),
('ORD010', 550.00, '741 Mountain Street','sara@example.com','Sara Stone','555-7654','2023-05-21 15:31:51','10'),
('ORD011' ,600.00,'852 Sky Street','mike@example.com','Mike Cloud','555-5432','2023-05-21 15:37:02','11'),
('ORD012' ,650.00,'963 Moon Street','anna@example.com','Anna Star','555-2109','2023-05-21 15:42:13','12'),
('ORD013' ,700.00,'174 Sun Street','james@example.com','James Bright','555-6789','2023-05-21 15:47:24','13'),
('ORD014' ,750.00,'285 Earth Street','lisa@example.com','Lisa Green','555-4567','2023-05-21 15:52:35','14'),
('ORD015' ,800.00,'396 Mars Street','tom@example.com','Tom Red','555-3210','2023-05-21 15:57:46','15'),
('ORD016' ,850.00,'417 Venus Street','amy@example.com','Amy Pink','555-2345','2023-05-21 16:02:57','16'),
('ORD017' ,900.00,'528 Mercury Street','eric@example.com','Eric Gold','555-9876','2023-05-21 16:08:08','17'),
('ORD018' ,950.00,'639 Jupiter Street','lucy@example.com','Lucy Silver','555-8765','2023-05-21 16:13:19','18'),
('ORD019' ,1000.00,'741 Saturn Street','adam@example.com','Adam Bronze','5557654 ','2023-05-21 16:18:30 ','19'),
('ORD020' ,1050.00,'852 Uranus Street ','eva@example.com ','Eva Purple ','555-6543 ','2023-05-21 16:23:41 ','20');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD021', 1100.00, '963 Neptune Street', 'leo@example.com', 'Leo Blue', '555-5432', '2023-05-21 16:28:52', 21),
('ORD022', 1150.00, '174 Pluto Street', 'zoe@example.com', 'Zoe Yellow', '555-4321', '2023-05-21 16:34:03', 22),
('ORD023', 1200.00, '285 Asteroid Street', 'max@example.com', 'Max Orange', '555-3210', '2023-05-21 16:39:14', 23),
('ORD024', 1250.00, '396 Comet Street', 'mia@example.com', 'Mia Violet', '555-2109', '2023-05-21 16:44:25', 24),
('ORD025', 1300.00, '417 Meteor Street', 'sam@example.com', 'Sam Brown', '555-0987', '2023-05-21 16:49:36', 25),
('ORD026', 1350.00, '528 Galaxy Street','kim@example.com','Kim Black','555-9876','2023-05-21 16:54:47','26'),
('ORD027' ,1400.00,'639 Universe Street','ben@example.com','Ben White','555-8765','2023-05-21 16:59:58','27'),
('ORD028' ,1450.00,'741 Dimension Street','joe@example.com','Joe Gray','555-7654','2023-05-21 17:05:09','28'),
('ORD029' ,1500.00,'852 Reality Street','kate@example.com','Kate Green','555-6543','2023-05-21 17:10:20','29'),
('ORD030' ,1550.00,'963 Dream Street','alex@example.com','Alex Red','555-5432','2023-05-21 17:15:31','30'),
('ORD031' ,1600.00,'174 Fantasy Street','lara@example.com','Lara Pink','5554321 ','2023-05-21 17:20:42','31'),
('ORD032' ,1650.00,'285 Magic Street','dan@example.com','Dan Gold','555-3210','2023-05-21 17:25:53','32'),
('ORD033' ,1700.00,'396 Mystery Street','jane@example.com','Jane Silver','555-2109','2023-05-21 17:31:04','33'),
('ORD034' ,1750.00,'417 Horror Street','nick@example.com','Nick Bronze','555-0987','2023-05-21 17:36:15','34'),
('ORD035' ,1800.00,'528 Romance Street','liz@example.com','Liz Purple','555-9876','2023-05-21 17:41:26','35'),
('ORD036' ,1850.00,'639 Comedy Street','tim@example.com','Tim Blue','555-8765','2023-05-21 17:46:37','36'),
('ORD037' ,1900.00,'741 Drama Street','ella@example.com','Ella Yellow','555-7654','2023-05-21 17:51:48','37'),
('ORD038' ,1950.00,'852 Action Street','rob@example.com','Rob Orange','555-6543','2023-05-21 17:56:59','38');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD040', 2050.00, '174 Sci-Fi Street', 'mark@example.com', 'Mark Green', '555-5432', '2023-05-21 18:02:10', 40),
('ORD041', 2100.00, '285 Fantasy Street', 'jill@example.com', 'Jill Red', '555-4321', '2023-05-21 18:07:21', 41),
('ORD042', 2150.00, '396 Thriller Street', 'paul@example.com', 'Paul Pink', '555-3210', '2023-05-21 18:12:32', 42),
('ORD043', 2200.00, '417 Mystery Street', 'nina@example.com', 'Nina Gold', '555-2109', '2023-05-21 18:17:43', 43),
('ORD044', 2250.00, '528 Horror Street', 'andy@example.com', 'Andy Silver', '555-0987', '2023-05-21 18:22:54', 44),
('ORD045', 2300.00, '639 Romance Street','sue@example.com','Sue Bronze','555-9876','2023-05-21 18:28:05','45'),
('ORD046' ,2350.00,'741 Comedy Street','ted@example.com','Ted Purple','555-8765','2023-05-21 18:33:16','46'),
('ORD047' ,2400.00,'852 Drama Street','tina@example.com','Tina Blue','555-7654','2023-05-21 18:38:27','47'),
('ORD048' ,2450.00,'963 Action Street','rick@example.com','Rick Yellow','555-6543','2023-05-21 18:43:38','48'),
('ORD049' ,2500.00,'174 Adventure Street','lana@example.com','Lana Orange','555-5432','2023-05-21 18:48:49','49'),
('ORD050' ,2550.00,'285 Sci-Fi Street ','matt@example.com ','Matt Green ','555-4321 ','2023-05-21 18:54:00 ','50'),
('ORD051' ,2600.00,'396 Fantasy Street ','judy@example.com ','Judy Red ','555-3210 ','2023-05-21 18:59:11 ','51'),
('ORD052' ,2650.00,'417 Thriller Street ','pete@example.com ','Pete Pink ','555-2109 ','2023-05-21 19:04:22 ','52'),
('ORD053' ,2700.00,'528 Mystery Street ','nora@example.com ','Nora Gold ','555-0987 ','2023-05-21 19:09:33 ','53'),
('ORD054' ,2750.00,'639 Horror Street ','andy@example.com ','Andy Silver ','555-9876 ','2023-05-21 19:14:44 ','54'),
('ORD055' ,2800.00,'741 Romance Street ','sara@example.com ','Sara Bronze ','555-8765 ','2023-05-21 19:19:55 ','55');


INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD057', 2900.00, '963 Drama Street', 'rita@example.com', 'Rita Blue', '555-7654', '2023-05-21 19:25:06', 57),
('ORD058', 2950.00, '174 Action Street', 'ross@example.com', 'Ross Yellow', '555-6543', '2023-05-21 19:30:17', 58),
('ORD059', 3000.00, '285 Adventure Street', 'mona@example.com', 'Mona Orange', '555-5432', '2023-05-21 19:35:28', 59),
('ORD060', 3050.00, '396 Sci-Fi Street', 'chris@example.com', 'Chris Green', '555-4321', '2023-05-21 19:40:39', 60),
('ORD061', 3100.00, '417 Fantasy Street','lou@example.com','Lou Red','555-3210','2023-05-21 19:45:50','61'),
('ORD062' ,3150.00,'528 Thriller Street','gina@example.com','Gina Pink','555-2109','2023-05-21 19:51:01','62'),
('ORD063' ,3200.00,'639 Mystery Street','ray@example.com','Ray Gold','555-0987','2023-05-21 19:56:12','63'),
('ORD064' ,3250.00,'741 Horror Street','kara@example.com','Kara Silver','555-9876','2023-05-21 20:01:23','64'),
('ORD065' ,3300.00,'852 Romance Street','jake@example.com','Jake Bronze','555-8765','2023-05-21 20:06:34','65'),
('ORD066' ,3350.00,'963 Comedy Street','lila@example.com','Lila Purple','555-7654','2023-05-21 20:11:45','66'),
('ORD067' ,3400.00,'174 Drama Street ','cole@example.com ','Cole Blue ','555-6543 ','2023-05-21 20:16:56 ','67'),
('ORD068' ,3450.00,'285 Action Street ','zara@example.com ','Zara Yellow ','555-5432 ','2023-05-21 20:22:07 ','68'),
('ORD069' ,3500.00,'396 Adventure Street ','kyle@example.com ','Kyle Orange ','555-4321 ','2023-05-21 20:27:18 ','69'),
('ORD070' ,3550.00,'417 Sci-Fi Street ','lucy@example.com ','Lucy Green ','555-3210 ','2023-05-21 20:32:29 ','70'),
('ORD071' ,3600.00,'528 Fantasy Street ','drew@example.com ','Drew Red ','555-2109 ','2023-05-21 20:37:40 ','71');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD073', 3700.00, '741 Mystery Street', 'matt@example.com', 'Matt Gold', '555-0987', '2023-05-21 20:42:51', 73),
('ORD074', 3750.00, '852 Horror Street', 'lana@example.com', 'Lana Silver', '555-9876', '2023-05-21 20:48:02', 74),
('ORD075', 3800.00, '963 Romance Street','josh@example.com','Josh Bronze','555-8765','2023-05-21 20:53:13','75'),
('ORD076' ,3850.00,'174 Comedy Street','ella@example.com','Ella Purple','555-7654','2023-05-21 20:58:24','76'),
('ORD077' ,3900.00,'285 Drama Street','liam@example.com','Liam Blue','555-6543','2023-05-21 21:03:35','77'),
('ORD078' ,3950.00,'396 Action Street','mila@example.com','Mila Yellow','555-5432','2023-05-21 21:08:46','78'),
('ORD079' ,4000.00,'417 Adventure Street','noah@example.com','Noah Orange','555-4321','2023-05-21 21:13:57','79'),
('ORD080' ,4050.00,'528 Sci-Fi Street ','emma@example.com ','Emma Green ','555-3210 ','2023-05-21 21:19:08 ','80'),
('ORD081' ,4100.00,'639 Fantasy Street ','oliver@example.com ','Oliver Red ','555-2109 ','2023-05-21 21:24:19 ','81'),
('ORD082' ,4150.00,'741 Thriller Street ','ava@example.com ','Ava Pink ','555-0987 ','2023-05-21 21:29:30 ','82'),
('ORD083' ,4200.00,'852 Mystery Street ','lucas@example.com ','Lucas Gold ','555-9876 ','2023-05-21 21:34:41 ','83');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD085', 4300.00, '174 Romance Street', 'mason@example.com', 'Mason Bronze', '555-8765', '2023-05-21 21:39:52', 85),
('ORD086', 4350.00, '285 Comedy Street', 'sophia@example.com', 'Sophia Purple', '555-7654', '2023-05-21 21:45:03', 86),
('ORD087', 4400.00, '396 Drama Street','ethan@example.com','Ethan Blue','555-6543','2023-05-21 21:50:14','87'),
('ORD088' ,4450.00,'417 Action Street','amelia@example.com','Amelia Yellow','555-5432','2023-05-21 21:55:25','88'),
('ORD089' ,4500.00,'528 Adventure Street','logan@example.com','Logan Orange','555-4321','2023-05-21 22:00:36','89'),
('ORD090' ,4550.00,'639 Sci-Fi Street ','mia@example.com ','Mia Green ','555-3210 ','2023-05-21 22:05:47 ','90'),
('ORD091' ,4600.00,'741 Fantasy Street ','aiden@example.com ','Aiden Red ','555-2109 ','2023-05-21 22:10:58 ','91'),
('ORD092' ,4650.00,'852 Thriller Street ','zoe@example.com ','Zoe Pink ','555-0987 ','2023-05-21 22:16:09 ','92'),
('ORD093' ,4700.00,'963 Mystery Street ','jacob@example.com ','Jacob Gold ','555-9876 ','2023-05-21 22:21:20 ','93');

INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD095', 4800.00, '285 Romance Street', 'owen@example.com', 'Owen Bronze', '555-8765', '2023-05-21 22:26:31', 95),
('ORD096', 4850.00, '396 Comedy Street', 'chloe@example.com', 'Chloe Purple', '555-7654', '2023-05-21 22:31:42', 96),
('ORD097', 4900.00, '417 Drama Street','carter@example.com','Carter Blue','555-6543','2023-05-21 22:36:53','97'),
('ORD098' ,4950.00,'528 Action Street','harper@example.com','Harper Yellow','555-5432','2023-05-21 22:42:04','98'),
('ORD099' ,5000.00,'639 Adventure Street','wyatt@example.com','Wyatt Orange','555-4321','2023-05-21 22:47:15','99'),
('ORD100' ,5050.00,'741 Sci-Fi Street ','riley@example.com ','Riley Green ','555-3210 ','2023-05-21 22:52:26 ','100'),
('ORD101' ,5100.00,'852 Fantasy Street ','liam@example.com ','Liam Red ','555-2109 ','2023-05-21 22:57:37 ','101'),
('ORD102' ,5150.00,'963 Thriller Street ','ella@example.com ','Ella Pink ','555-0987 ','2023-05-21 23:02:48 ','102'),
('ORD103' ,5200.00,'174 Mystery Street ','noah@example.com ','Noah Gold ','555-9876 ','2023-05-21 23:07:59 ','103');


INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES 
('ORD105', 5300.00, '396 Romance Street', 'oliver@example.com', 'Oliver Bronze', '555-8765', '2023-05-21 23:13:10', 105),
('ORD106', 5350.00, '417 Comedy Street', 'mia@example.com', 'Mia Purple', '555-7654', '2023-05-21 23:18:21', 106),
('ORD107', 5400.00, '528 Drama Street','logan@example.com','Logan Blue','555-6543','2023-05-21 23:23:32','107'),
('ORD108' ,5450.00,'639 Action Street','sophia@example.com','Sophia Yellow','555-5432','2023-05-21 23:28:43','108'),
('ORD109' ,5500.00,'741 Adventure Street','ethan@example.com','Ethan Orange','555-4321','2023-05-21 23:33:54','109'),
('ORD110' ,5550.00,'852 Sci-Fi Street ','amelia@example.com ','Amelia Green ','555-3210 ','2023-05-21 23:39:05 ','110'),
('ORD111' ,5600.00,'963 Fantasy Street ','liam@example.com ','Liam Red ','555-2109 ','2023-05-21 23:44:16 ','111'),
('ORD112' ,5650.00,'174 Thriller Street ','isla@example.com ','Isla Pink ','555-0987 ','2023-05-21 23:49:27 ','112'),
('ORD113' ,5700.00,'285 Mystery Street ','lucas@example.com ','Lucas Gold ','555-9876 ','2023-05-21 23:54:38 ','113');

USE car_dealership;
INSERT INTO order_details (ID, AMOUNT, PRICE, QUANITY, ORDER_ID, PRODUCT_ID) VALUES
('OD001', 20000.00, 20000.00, 1, 'ORD1', 'V001'),
('OD002', 18000.00, 18000.00, 1, 'ORD2', 'V002'),
('OD003', 17000.00, 17000.00, 1, 'ORD2', 'V003'),
('OD004', 19000.00, 19000.00, 1, 'ORD3', 'V004'),
('OD005', 16000.00, 16000.00, 1, 'ORD3', 'V005'),
('OD006', 15000.00, 15000.00, 1, 'ORD3', 'V006'),
('OD007', 21000.00, 21000.00, 1, 'ORD4', 'V007'),
('OD008', 14000.00, 14000.00, 1, 'ORD4', 'V008'),
('OD009', 22000.00, 22000.00, 1, 'ORD5', 'V009'),
('OD010', 23000.00, 23000.00, 1, 'ORD5', 'V010'),
('OD011 ', 20000.00 , 2000.0 , (10) , ('O011') , ('V001') ),
('OD012 ', 1800.0 , 180.0 , (10) , ('O012') , ('V002') ),
('OD013 ', 1700.0 , 170.0 , (10) , ('O013') , ('V003') ),
('OD014 ', 1900.0 , 190.0 , (10) , ('O014') , ('V004') );
