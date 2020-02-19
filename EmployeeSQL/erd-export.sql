
DROP TABLE IF EXISTS deparments;
CREATE TABLE deparments (
	id SERIAL,    
	dept_no varchar(20)   NOT NULL,
    dep_name varchar(30)   NOT NULL
    PRIMARY KEY (id),
    FOREIGN KEY (dept_no) REFERENCES employees_period(id)
);