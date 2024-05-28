CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.Countries TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT All ON ShopDB.Countries TO 'deploymentuser'@'%';
