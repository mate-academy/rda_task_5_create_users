CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, SELECT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON Shop.DB.* TO 'deploymentuser'@'%';