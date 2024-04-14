-- write your code for database user creation here

​​CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.Countries TO 'webappuser'@'host';


​​CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON ShopDB.Countries TO 'deploymentuser'@'host';
