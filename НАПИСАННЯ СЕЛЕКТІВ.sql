USE car_dealership;

-- Перегляд усіх замовлень, які були зроблені після певної дати. --
SELECT * FROM orders WHERE order_date > '2023-01-01';

-- Перегляд імен та електронних адресів клієнтів, які замовили автомобіль з кодом X. --
SELECT customer_name, customer_email FROM orders
JOIN order_details ON orders.id = order_details.order_id
WHERE order_details.product_id = 'V001';

-- Перегляд автомобілів, вартість яких більша за Х.--
SELECT * FROM vehicle WHERE price > 100000;

-- Перегляд автомобілів з маркою X. --
SELECT * FROM vehicle WHERE model = 'Tesla Model 3';

-- Список виробників та кількість моделей автомобілів для кожного виробника. --
SELECT manufacturer, COUNT(*) AS model_count FROM vehicle
GROUP BY manufacturer;

-- Список усіх акаунтів з роллю X. --
SELECT * FROM accounts WHERE user_role = 'USER';

-- Список клієнтів, які мають більше 5 замовлень. --
SELECT customer_name FROM orders
GROUP BY customer_name
HAVING COUNT(*) > 5;


-- Модель та ціна автомобіля, який має найвищу ціну в таблиці vehicle. --
SELECT model, price FROM vehicle
WHERE price = (SELECT MAX(price) FROM vehicle);

-- Сумарна кількість та сумарна вартість замовлених автомобілів за кожним виробником.--
SELECT manufacturer, SUM(quanity) AS total_quanity, SUM(amount) AS total_amount FROM vehicle
JOIN order_details ON vehicle.code = order_details.product_id
GROUP BY manufacturer;

-- Номер замовлення та дату замовлення для тих замовлень, які мають більше ніж один автомобіль в деталях замовлення. --
SELECT order_num, order_date FROM orders
WHERE id IN (SELECT order_id FROM order_details GROUP BY order_id HAVING COUNT(*) > 1);

-- Імена та телефони клієнтів, які замовили автомобіль з моделлю Х. --
SELECT customer_name, customer_phone FROM orders
JOIN order_details ON orders.id = order_details.order_id
JOIN vehicle ON order_details.product_id = vehicle.code
WHERE vehicle.model = 'Tesla Model 3';

-- Модель та середня ціна замовлених автомобілів для кожної моделі. --
SELECT model, AVG(price) AS average_price FROM vehicle
JOIN order_details ON vehicle.code = order_details.product_id
GROUP BY model;

-- Ім’я користувача та кількість замовлень, які він зробив за Х рік --
SELECT user, COUNT(*) AS order_count FROM accounts
JOIN orders ON accounts.user = orders.customer_email
WHERE YEAR(order_date) = 2023
GROUP BY user;