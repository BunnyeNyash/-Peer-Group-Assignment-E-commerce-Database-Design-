-- Create roles for different levels of access
CREATE ROLE ecommerce_admin;
CREATE ROLE ecommerce_staff;
CREATE ROLE ecommerce_viewer;
CREATE ROLE ecommerce_manager;
CREATE ROLE ecommerce_support;

-- Grant appropriate privileges to each role
GRANT ALL PRIVILEGES ON GRP_484_ecommerce.* TO ecommerce_admin;
GRANT SELECT, INSERT, UPDATE ON GRP_484_ecommerce.* TO ecommerce_staff;
GRANT SELECT ON GRP_484_ecommerce.* TO ecommerce_viewer;
GRANT SELECT, INSERT, UPDATE, DELETE ON GRP_484_ecommerce.* TO ecommerce_manager;
GRANT SELECT, INSERT ON GRP_484_ecommerce.* TO ecommerce_support;

-- Create users and set their passwords
CREATE USER 'celestine'@'localhost' IDENTIFIED BY 'celestine123';
CREATE USER 'kariuki'@'localhost' IDENTIFIED BY 'kariuki456';
CREATE USER 'john'@'localhost' IDENTIFIED BY 'john789';
CREATE USER 'mary'@'localhost' IDENTIFIED BY 'mary987';
CREATE USER 'alice'@'localhost' IDENTIFIED BY 'alice123';
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'bob456';

-- Assign roles to users
GRANT ecommerce_admin TO 'celestine'@'localhost' WITH ADMIN OPTION;
GRANT ecommerce_viewer TO 'kariuki'@'localhost';
GRANT ecommerce_manager TO 'john'@'localhost';
GRANT ecommerce_support TO 'mary'@'localhost';
GRANT ecommerce_staff TO 'alice'@'localhost';
GRANT ecommerce_staff TO 'bob'@'localhost';

-- Set default roles for users upon login
SET DEFAULT ROLE ecommerce_admin TO 'celestine'@'localhost';
SET DEFAULT ROLE ecommerce_viewer TO 'kariuki'@'localhost';
SET DEFAULT ROLE ecommerce_manager TO 'john'@'localhost';
SET DEFAULT ROLE ecommerce_support TO 'mary'@'localhost';
SET DEFAULT ROLE ecommerce_staff TO 'alice'@'localhost';
SET DEFAULT ROLE ecommerce_staff TO 'bob'@'localhost';

-- Apply changes made to privileges
FLUSH PRIVILEGES;
