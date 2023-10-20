INSERT INTO usuarios(first_name, last_name)
VALUES ('Amy', 'Giver'),
('Eli', 'Byers'),
('Big', 'Bird'),
('La rana', 'René'),
('Marky', 'Mark'),
('James', 'Park');

INSERT INTO amistades(user_id, friend_id)
VALUES (1,2),
(1,4),
(1,6),
(2,1),
(2,3),
(2,5),
(3, 2),
(3,5),
(4,3),
(5,1),
(5,6),
(6,2),
(6,3);

SELECT u.first_name, u.last_name, usuario2.first_name AS friend_first_name, usuario2.last_name AS friend_last_name 
FROM usuarios u JOIN amistades a 
ON u.id = a.user_id
LEFT JOIN usuarios as usuario2 ON usuario2.id = a.friend_id;

SELECT usuario2.first_name as first_name, usuario2.last_name AS last_name, u.first_name AS amigos_con 
FROM usuarios u JOIN amistades a 
ON u.id = a.user_id
LEFT JOIN usuarios AS usuario2 
ON usuario2.id = a.friend_id
WHERE u.id = 1;

SELECT COUNT(*) AS numero_de_amistades from amistades;

SELECT user_id, u.first_name, u.last_name, count(user_id) AS numero_de_amistades 
FROM amistades a JOIN usuarios u 
ON u.id = a.user_id
GROUP BY user_id
ORDER BY numero_de_amistades DESC
LIMIT 1;

SELECT usuario2.first_name AS first_name, usuario2.last_name AS last_name, u.first_name AS amigos_con 
FROM usuarios u JOIN amistades a 
ON u.id = a.user_id
LEFT JOIN usuarios as usuario2 ON usuario2.id = a.friend_id
WHERE u.id = 3
ORDER BY first_name;
