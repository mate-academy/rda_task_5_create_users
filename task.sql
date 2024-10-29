-- write your code for database user creation here
sudo mysql -u root
CREATE USER 'webappuser'@'%' INDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'%'

CREATE USER 'deploymentuser'@'%'IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';