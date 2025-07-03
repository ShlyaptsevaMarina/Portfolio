Написание запросов:


--1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а: 

SELECT user_name
FROM users
WHERE level_id = 1 AND skill > 799000 AND user_name like '%a%';
 user_name: Anna

--2. Удалить всех пользователей, у которых skill меньше 100000
SELECT *
DELETE FROM users
WHERE skill<100000; 


--3. Вывести все данные из таблицы user в порядке убывания по полю skill 

SELECT *
FROM users
ORDER BY skill DESC;

Anna
Anton
Olga





--4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10
INSERT INTO users (user_name, level_id, skill)
VALUES ('Oleg', 4, 10);



--6. Выбрать user_name всех пользователей уровня admin используя подзапрос

SELECT user_name
FROM users
WHERE level_id = (
    SELECT id
    FROM levels
    WHERE level_name = 'admin'
);
user_name
Anton
Olga
Anna


--7. Выбрать user_name всех пользователей уровня admin используя join


SELECT users.user_name
FROM users                
JOIN levels                
ON users.level_id = levels.id         
WHERE levels.level_name = 'admin';

user_name
Anton
Olga
Anna

