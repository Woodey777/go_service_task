
-- name: CreateProject :one
INSERT INTO projects (
  name
) VALUES (
  $1
)
RETURNING *;

-- name: ReadProject :one
SELECT * FROM projects
WHERE id = $1;

-- name: UpdateProjectsName :one
UPDATE projects
  set name = $2
WHERE id = $1
RETURNING *;

-- name: DeleteProject :one
DELETE FROM projects
WHERE id = $1
RETURNING *;

-- name: CreateGood :one
INSERT INTO goods (
  project_id,
  name,
  priority
) VALUES (
  $1, $2, (SELECT COALESCE(MAX(priority)+1, 1) FROM goods)
)
RETURNING *;

-- name: ReadGood :one
SELECT * FROM goods
WHERE id = $1;

-- name: UpdateGoodsName :one
UPDATE goods
  set name = $2
WHERE id = $1
RETURNING *;

-- name: UpdateGoodsDescription :one
UPDATE goods
  set description = $2
WHERE id = $1
RETURNING *;

-- name: UpdateGoodsPriority :one
UPDATE goods
  set priority = $2
WHERE id = $1
RETURNING *;

-- name: UpdateGoodsRemoved :one
UPDATE goods
  set removed = $2
WHERE id = $1
RETURNING *;

-- name: DeleteGood :one
DELETE FROM goods
WHERE id = $1
RETURNING *;



