CREATE DATABASE librenms CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'librenms'@'%' IDENTIFIED BY 'letsgomets2019';
GRANT ALL PRIVILEGES ON * . * TO 'librenms'@'%';
FLUSH PRIVILEGES;