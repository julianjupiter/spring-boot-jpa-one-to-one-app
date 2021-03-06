CREATE TABLE IF NOT EXISTS employee (
	id int(11) NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS security (
    id int(11) NOT NULL AUTO_INCREMENT,
	employee_id INT(11) NOT NULL UNIQUE,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    CONSTRAINT fk_security_employee FOREIGN KEY (employee_id) REFERENCES employee (id),
    CONSTRAINT pk_security PRIMARY KEY (id)
);