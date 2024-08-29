CREATE TABLE IF NOT EXISTS projects 
(
  id INT NOT NULL,
  name CHAR(200) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  PRIMARY KEY id
);
CREATE INDEX IF NOT EXISTS projects_id ON projects(id);
INSERT INTO projects VALUES (0, "Первая запись", NOW())


CREATE TABLE IF NOT EXISTS goods 
(
  id INT NOT NULL,
  project_id INT NOT NULL,
  name CHAR(200) NOT NULL,
  description CHAR(500),
  priority INT NOT NULL,
  removed BOOLEAN NOT NULL,
  created_at TIMESTAMP NOT NULL,
  PRIMARY KEY (id, project_id)
);

CREATE INDEX IF NOT EXISTS goods_id ON goods(id);
CREATE INDEX IF NOT EXISTS goods_project_id ON goods(project_id);
CREATE INDEX IF NOT EXISTS goods_name ON goods(name);
