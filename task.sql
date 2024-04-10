-- write your code for database user creation here

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, SELECT, UPDATE, DELETE ON ShopDB.Countries TO 'webappuser'@'%';
GRANT ALL ON ShopDB.Countries TO 'deploymentuser'@'%';

