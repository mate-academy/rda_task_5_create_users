-- Use the ShopDB database
USE ShopDB;

-- Create webappuser with limited CRUD permissions
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Create deploymentuser with all privileges
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Apply changes to ensure permissions are updated
FLUSH PRIVILEGES;
