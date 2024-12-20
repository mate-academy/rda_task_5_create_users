-- Use the ShopDB database
USE ShopDB;

-- Create webappuser with limited CRUD permissions
CREATE USER IF NOT EXISTS 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Create deploymentuser with full privileges
CREATE USER IF NOT EXISTS 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Apply changes to ensure permissions are updated
FLUSH PRIVILEGES;

-- Verify permissions for webappuser
SHOW GRANTS FOR 'webappuser'@'%';

-- Verify permissions for deploymentuser
SHOW GRANTS FOR 'deploymentuser'@'%';
