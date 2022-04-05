--users have different roles. Including necessary constraints
CREATE TABLE users (
	user_id serial PRIMARY KEY,
	user_name VARCHAR ( 50 ) UNIQUE NOT NULL,
	role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
  	FOREIGN KEY (role_id)
    REFERENCES roles (role_id)
  
);

CREATE TABLE roles (
	role_id serial PRIMARY KEY,
	role_name VARCHAR ( 50 ) UNIQUE NOT NULL,
	      PRIMARY KEY (user_id, role_id),
 
	
);

--insert statements, to add 2 sample users, 3 sample roles, and to assign each user to have at least 2 of the created roles
 INSERT INTO users(column1, column2, column3)
VALUES (1, Roney, 1)
VALUES (2, Vincent, 7);



--select statements showing all users and respective roles
SELECT roles.roleid, users.usernanmeName, roles.rolename
FROM roles
INNER JOIN users ON roles.id=users.id;


-- select statement that lists all roles for a specific user.
select users.usernanmeName, roles.rolename
FROM roles
INNER JOIN users ON roles.id=users.id
WHERE user_id = 1;


-- select statement that lists all users that have a specific role

select users.usernanmeName
FROM roles
INNER JOIN users ON roles.id=users.id
WHERE ROLE_id = 1;