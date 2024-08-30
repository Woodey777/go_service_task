CREATE TABLE projects 
(
  id INT NOT NULL,
  name CHAR(200) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  PRIMARY KEY (id)
);


CREATE TABLE goods 
(
  id INT NOT NULL,
  project_id INT NOT NULL,
  name CHAR(200) NOT NULL,
  description CHAR(500),
  priority INT NOT NULL,
  removed BOOLEAN NOT NULL DEFAULT false,
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  PRIMARY KEY (id, project_id)
);