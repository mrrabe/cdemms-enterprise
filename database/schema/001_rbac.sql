CREATE TABLE roles(
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL UNIQUE,
 description VARCHAR(255),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE permissions(
 id INT AUTO_INCREMENT PRIMARY KEY,
 code VARCHAR(150) NOT NULL UNIQUE,
 description VARCHAR(255)
);

CREATE TABLE user_roles(
 user_id INT NOT NULL,
 role_id INT NOT NULL,
 PRIMARY KEY(user_id,role_id)
);

CREATE TABLE role_permissions(
 role_id INT NOT NULL,
 permission_id INT NOT NULL,
 PRIMARY KEY(role_id,permission_id)
);
