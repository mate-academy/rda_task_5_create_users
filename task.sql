-- write your code for database user creation here
USE ShopDB;

-- Create webappuser (I frequently do the same on MS SQL server ))
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Create the deploymentuser
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Apply the changes
FLUSH PRIVILEGES;
