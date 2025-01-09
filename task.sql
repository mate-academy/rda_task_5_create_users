-- Подключаемся к базе данных ShopDB
USE ShopDB;

-- Создаём пользователя webappuser с паролем P@ssw0rd
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Назначаем пользователю webappuser права на выполнение CRUD операций
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Создаём пользователя deploymentuser с паролем P@ssw0rd
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Назначаем пользователю deploymentuser полные права на базу данных ShopDB
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Применяем изменения
FLUSH PRIVILEGES;