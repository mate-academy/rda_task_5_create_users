-- write your code for database user creation here
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT CREATE, INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'host';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'host';
