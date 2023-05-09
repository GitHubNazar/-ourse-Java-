


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

USE car_dealership;
INSERT INTO orders (ID, AMOUNT, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, ORDER_NUM) VALUES
('O001', 20000.00, '123 Main Street', 'user1@gmail.com', 'User One', '111-1111', '2023-04-23 12:10:18', 1001),
('O002', 36000.00, '456 Second Avenue', 'user2@gmail.com', 'User Two', '222-2222', '2023-04-22 10:20:32', 1002),
('O003', 51000.00, '789 Third Boulevard', 'user3@gmail.com', 'User Three', '333-3333', '2023-04-21 09:50:27', 1003),
('O004', 38000.00, '101 Fourth Street', 'user4@gmail.com', 'User Four', '444-4444', '2023-04-20 11:35:19', 1004),
('O005', 32000.00, '102 Fifth Avenue', 'user5@gmail.com', 'User Five', '555-5555', '2023-04-19 08:30:14', 1005),
('O006', 30000.00, '103 Sixth Boulevard', 'user6@gmail.com', 'User Six', '666-6666', '2023-04-18 07:15:09', 1006),
('O007', 42000.00, '104 Seventh Street', 'user7@gmail.com', 'User Seven', '777-7777', '2023-04-17 13:25:24', 1007),
('O008', 28000.00, '105 Eighth Avenue', 'user8@gmail.com', 'User Eight', '888-8888', '2023-04-16 06:10:04', 1008),
('O009', 44000.00, '106 Ninth Boulevard', 'user9@gmail.com', 'User Nine', '999-9999', '2023-04-15 14:40:29', 1009),
('O010', 46000.00, '107 Tenth Street ', 'user10@gmail.com ', 'User Ten ', '000-0000 ', '2023-04-14 15:55:34 ', 1010),
('O011 ', 40000.00, '108 Eleventh Avenue ', 'admin@gmail.com ', 'Admin ', '111-1111 ', '2023-04-13 16:10:39 ', (1011)),
('O012 ', 34000.00, '(109) Twelfth Boulevard ', '(user11@gmail.com) ', '(User Eleven) ', '111-2222 ', '2023-04-12 17:25:44 ', (1012)),
('O013 ', 37000.00, '(110) Thirteenth Street ', '(user12@gmail.com) ', '(User Twelve) ', '111-3333 ', '2023-04-11 18:40:49 ', (1013)),
('O014 ', 39000.00, '(111) Fourteenth Avenue ', '(user13@gmail.com) ', '(User Thirteen) ', '111-4444 ', '2023-04-10 19:55:54 ', (1014));

USE car_dealership;
INSERT INTO order_details (ID, AMOUNT, PRICE, QUANITY, ORDER_ID, PRODUCT_ID) VALUES
('OD001', 20000.00, 20000.00, 1, 'O001', 'V001'),
('OD002', 18000.00, 18000.00, 1, 'O002', 'V002'),
('OD003', 17000.00, 17000.00, 1, 'O002', 'V003'),
('OD004', 19000.00, 19000.00, 1, 'O003', 'V004'),
('OD005', 16000.00, 16000.00, 1, 'O003', 'V005'),
('OD006', 15000.00, 15000.00, 1, 'O003', 'V006'),
('OD007', 21000.00, 21000.00, 1, 'O004', 'V007'),
('OD008', 14000.00, 14000.00, 1, 'O004', 'V008'),
('OD009', 22000.00, 22000.00, 1, 'O005', 'V009'),
('OD010', 23000.00, 23000.00, 1, 'O005', 'V010'),
('OD011 ', 20000.00 , 2000.0 , (10) , ('O011') , ('V001') ),
('OD012 ', 1800.0 , 180.0 , (10) , ('O012') , ('V002') ),
('OD013 ', 1700.0 , 170.0 , (10) , ('O013') , ('V003') ),
('OD014 ', 1900.0 , 190.0 , (10) , ('O014') , ('V004') );