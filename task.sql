-- write your code for database user creation here

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- following code to be run through the terminal via SSH or direct input

GRANT SELECT, CREATE, UPDATE, DELETE ON database.table TO 'webappuser'@'%';
GRANT ALL ON database.table TO 'deploymentuser'@'%';
