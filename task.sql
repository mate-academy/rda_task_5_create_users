CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';
